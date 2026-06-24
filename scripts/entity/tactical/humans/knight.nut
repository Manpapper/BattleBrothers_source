this.knight <- this.inherit("scripts/entity/tactical/human", {
	m = {},
	function create()
	{
		this.m.Type = this.Const.EntityType.Knight;
		this.m.BloodType = this.Const.BloodType.Red;
		this.m.XP = this.Const.Tactical.Actor.Knight.XP;
		this.m.Name = this.generateName();
		this.m.IsGeneratingKillName = false;
		this.human.create();
		this.m.Faces = this.Const.Faces.SmartMale;
		this.m.Hairs = this.Const.Hair.CommonMale;
		this.m.HairColors = this.Const.HairColors.All;
		this.m.Beards = this.Const.Beards.Tidy;
		this.m.AIAgent = this.new("scripts/ai/tactical/agents/military_melee_agent");
		this.m.AIAgent.setActor(this);
	}

	function generateName()
	{
		return this.Const.Strings.KnightNames[this.Math.rand(0, this.Const.Strings.KnightNames.len() - 1)];
	}

	function onInit()
	{
		this.human.onInit();
		local b = this.m.BaseProperties;
		b.setValues(this.Const.Tactical.Actor.Knight);
		b.TargetAttractionMult = 1.0;
		b.IsSpecializedInSwords = true;
		b.IsSpecializedInAxes = true;
		b.IsSpecializedInMaces = true;
		b.IsSpecializedInFlails = true;
		b.IsSpecializedInPolearms = true;
		b.IsSpecializedInThrowing = true;
		b.IsSpecializedInHammers = true;
		b.IsSpecializedInSpears = true;
		b.IsSpecializedInCleavers = true;
		this.m.ActionPoints = b.ActionPoints;
		this.m.Hitpoints = b.Hitpoints;
		this.m.CurrentProperties = clone b;
		this.setAppearance();
		this.getSprite("socket").setBrush("bust_base_military");
		this.m.Skills.add(this.new("scripts/skills/perks/perk_shield_expert"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_brawny"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_captain"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_fast_adaption"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_crippling_strikes"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_coup_de_grace"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_battle_forged"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_reach_advantage"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_berserk"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_underdog"));
		this.m.Skills.add(this.new("scripts/skills/actives/rotation"));
		this.m.Skills.add(this.new("scripts/skills/actives/recover_skill"));
	}

	function onDeath( _killer, _skill, _tile, _fatalityType )
	{
		if (!this.Tactical.State.isScenarioMode() && _killer != null && _killer.isPlayerControlled())
		{
			this.updateAchievement("AKnightsTale", 1, 1);
		}

		this.human.onDeath(_killer, _skill, _tile, _fatalityType);
	}

	function assignRandomEquipment()
	{
		local r;
		local weapons = [
			"weapons/fighting_axe",
			"weapons/noble_sword",
			"weapons/winged_mace",
			"weapons/warhammer"
		];

		if (this.m.Items.hasEmptySlot(this.Const.ItemSlot.Mainhand))
		{
			this.m.Items.equip(this.new("scripts/items/" + weapons[this.Math.rand(0, weapons.len() - 1)]));
		}

		local shields = [
			"shields/faction_heater_shield",
			"shields/faction_kite_shield"
		];

		if (this.m.Items.hasEmptySlot(this.Const.ItemSlot.Offhand))
		{
			this.m.Items.equip(this.new("scripts/items/" + shields[this.Math.rand(0, shields.len() - 1)]));
		}

		local armor = [
			"armor/coat_of_plates",
			"armor/coat_of_scales",
			"armor/reinforced_mail_hauberk"
		];

		if (this.m.Items.hasEmptySlot(this.Const.ItemSlot.Body))
		{
			local a = this.new("scripts/items/" + armor[this.Math.rand(0, armor.len() - 1)]);

			if (this.Const.DLC.Unhold && this.Math.rand(1, 100) < (this.m.Items.hasEmptySlot(this.Const.ItemSlot.Head) ? 40 : 75))
			{
				local banner = this.getBanner();
				local upgrades = [
					"armor_upgrades/joint_cover_upgrade",
					"armor_upgrades/mail_patch_upgrade"
				];

				if (banner == 3 || banner == 4 || banner == 6 || banner == 7 || banner == 9 || banner == 10)
				{
					upgrades.push("armor_upgrades/heraldic_plates_upgrade");
				}

				local upgrade = this.new("scripts/items/" + upgrades[this.Math.rand(0, upgrades.len() - 1)]);
				a.setUpgrade(upgrade);
			}

			this.m.Items.equip(a);
		}

		local helmets = [
			"helmets/full_helm",
			"helmets/faction_helm"
		];

		if (this.m.Items.hasEmptySlot(this.Const.ItemSlot.Head))
		{
			this.m.Items.equip(this.new("scripts/items/" + helmets[this.Math.rand(0, helmets.len() - 1)]));
		}

		this.colorMatchEquipment();
	}

	function makeMiniboss()
	{
		if (!this.actor.makeMiniboss())
		{
			return false;
		}

		this.getSprite("miniboss").setBrush("bust_miniboss");
		local weapons = [
			"weapons/named/named_axe",
			"weapons/named/named_greatsword",
			"weapons/named/named_poleaxe",
			"weapons/named/named_mace",
			"weapons/named/named_sword"
		];
		local shields = clone this.Const.Items.NamedShields;
		local armor = [
			"armor/named/brown_coat_of_plates_armor",
			"armor/named/golden_scale_armor",
			"armor/named/green_coat_of_plates_armor",
			"armor/named/heraldic_mail_armor"
		];
		local helmets = [
			"helmets/named/sallet_green_helmet",
			"helmets/named/heraldic_mail_helmet",
			"helmets/named/heraldic_mail_helmet"
		];
		local r = this.Math.rand(1, 4);

		if (r == 1)
		{
			this.m.Items.equip(this.new("scripts/items/" + weapons[this.Math.rand(0, weapons.len() - 1)]));
		}
		else if (r == 2)
		{
			this.m.Items.equip(this.new("scripts/items/" + shields[this.Math.rand(0, shields.len() - 1)]));
		}
		else if (r == 3)
		{
			this.m.Items.equip(this.new("scripts/items/" + armor[this.Math.rand(0, armor.len() - 1)]));
		}
		else
		{
			this.m.Items.equip(this.new("scripts/items/" + helmets[this.Math.rand(0, helmets.len() - 1)]));
		}

		this.m.Skills.add(this.new("scripts/skills/perks/perk_killing_frenzy"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_hold_out"));
		return true;
	}

	function getBanner()
	{
		local banner = 6;

		if (("State" in this.Tactical) && this.Tactical.State != null && !this.Tactical.State.isScenarioMode())
		{
			banner = this.World.FactionManager.getFaction(this.getFaction()).getBanner();
		}
		else
		{
			banner = this.getFaction();
		}

		if (this.Tactical.State.isScenarioMode())
		{
			banner = 9;
		}

		return banner;
	}

	function colorMatchEquipment()
	{
		local banner = this.getBanner();
		this.m.Surcoat = banner;

		if (this.Math.rand(1, 100) <= 90)
		{
			this.getSprite("surcoat").setBrush("surcoat_" + (banner < 10 ? "0" + banner : banner));
		}

		local items = this.getItems();
		local armor = items.getItemAtSlot(this.Const.ItemSlot.Body);

		if (armor.getID() == "armor.body.heraldic_mail")
		{
			if (banner == 4 || banner <= 2)
			{
				armor.setVariant(121);
			}
			else if (banner == 3 || banner == 8)
			{
				armor.setVariant(119);
			}
			else if (banner == 5 || banner == 10 || banner == 7)
			{
				armor.setVariant(120);
			}
			else if (banner == 9 || banner == 6)
			{
				armor.setVariant(36);
			}
		}
		else if (armor.getID() == "armor.body.green_coat_of_plates")
		{
			if (banner == 6 || banner == 8 || banner <= 2)
			{
				armor.setVariant(126);
			}
			else if (banner == 3)
			{
				armor.setVariant(125);
			}
			else if (banner == 4 || banner == 9)
			{
				armor.setVariant(124);
			}
			else if (banner == 5 || banner == 7 || banner == 10)
			{
				armor.setVariant(43);
			}
		}

		armor.updateVariant();
		armor.updateAppearance();
		local helmet = items.getItemAtSlot(this.Const.ItemSlot.Head);

		if (helmet.getID() == "armor.head.heraldic_mail")
		{
			if (banner == 10 || banner == 7)
			{
				helmet.setVariant(262);
			}
			else if (banner <= 2)
			{
				helmet.setVariant(264);
			}
			else if (banner == 8 || banner == 3)
			{
				helmet.setVariant(265);
			}
			else if (banner == 9 || banner == 4)
			{
				helmet.setVariant(263);
			}
			else if (banner == 5)
			{
				helmet.setVariant(266);
			}
			else if (banner == 6)
			{
				helmet.setVariant(53);
			}
		}
		else if (helmet.getID() == "armor.head.sallet_green")
		{
			if (banner == 10)
			{
				helmet.setVariant(49);
			}
			else if (banner <= 2)
			{
				helmet.setVariant(260);
			}
			else if (banner == 8 || banner == 3)
			{
				helmet.setVariant(258);
			}
			else if (banner == 9 || banner == 4)
			{
				helmet.setVariant(257);
			}
			else if (banner == 5)
			{
				helmet.setVariant(259);
			}
			else if (banner == 6 || banner == 7)
			{
				helmet.setVariant(261);
			}
		}
		else if (helmet.getID() == "armor.head.faction_helm")
		{
			helmet.setVariant(banner);
		}
		else if (helmet.getID() == "armor.head.full_helm")
		{
			if (this.Math.rand(1, 100) < 70)
			{
				if (banner == 5 || banner == 10)
				{
					helmet.setVariant(149);
				}
				else if (banner <= 2)
				{
					helmet.setVariant(150);
				}
				else if (banner == 3 || banner == 8)
				{
					helmet.setVariant(151);
				}
				else if (banner == 4 || banner == 9)
				{
					helmet.setVariant(183);
				}
				else if (banner == 6)
				{
					helmet.setVariant(148);
				}
				else
				{
					helmet.setPlainVariant();
				}
			}
			else
			{
				helmet.setPlainVariant();
			}
		}

		helmet.updateVariant();
		helmet.updateAppearance();
		local shield = items.getItemAtSlot(this.Const.ItemSlot.Offhand);

		if (shield != null && (shield.getID() == "shield.faction_heater_shield" || shield.getID() == "shield.faction_kite_shield"))
		{
			shield.setFaction(banner);
			shield.updateAppearance();
		}

		local upgrade = armor.getUpgrade();

		if (upgrade != null && upgrade.getID() == "armor_upgrade.heraldic_plates")
		{
			if (banner == 7 || banner == 10)
			{
				upgrade.setVariant(18);
			}
			else if (banner == 3)
			{
				upgrade.setVariant(17);
			}
			else if (banner == 4 || banner == 9)
			{
				upgrade.setVariant(16);
			}
			else if (banner == 6)
			{
				upgrade.setVariant(14);
			}

			upgrade.updateVariant();
			upgrade.updateAppearance(items.getAppearance());
		}

		items.updateAppearance();
	}

});

