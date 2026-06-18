this.noble_man_at_arms <- this.inherit("scripts/entity/tactical/human", {
	m = {},
	function create()
	{
		this.m.Type = this.Const.EntityType.ManAtArms;
		this.m.BloodType = this.Const.BloodType.Red;
		this.m.XP = this.Const.Tactical.Actor.ManAtArms.XP;
		this.human.create();
		this.m.Faces = this.Const.Faces.AllMale;
		this.m.Hairs = this.Const.Hair.CommonMale;
		this.m.HairColors = this.Const.HairColors.All;
		this.m.Beards = this.Const.Beards.Tidy;
		this.m.AIAgent = this.new("scripts/ai/tactical/agents/military_melee_agent");
		this.m.AIAgent.setActor(this);
	}

	function onInit()
	{
		this.human.onInit();
		local b = this.m.BaseProperties;
		b.setValues(this.Const.Tactical.Actor.ManAtArms);
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
		this.m.Skills.add(this.new("scripts/skills/perks/perk_battle_forged"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_brawny"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_fast_adaption"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_reach_advantage"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_backstabber"));
		this.m.Skills.add(this.new("scripts/skills/actives/rotation"));
		this.m.Skills.add(this.new("scripts/skills/actives/recover_skill"));
	}

	function assignRandomEquipment()
	{
		local r;
		local banner = 3;

		if (!this.Tactical.State.isScenarioMode())
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

		this.m.Surcoat = banner;

		if (this.Math.rand(1, 100) <= 90)
		{
			this.getSprite("surcoat").setBrush("surcoat_" + (banner < 10 ? "0" + banner : banner));
		}

		local weapons = [];

		if (this.Math.rand(1, 100) <= 60)
		{
			weapons.extend([
				"weapons/poleaxe",
				"weapons/billhook",
				"weapons/pike"
			]);

			if (this.Const.DLC.Unhold)
			{
				weapons.push("weapons/polehammer");
				weapons.push("weapons/longsword");
			}
		}
		else
		{
			weapons.extend([
				"weapons/military_pick",
				"weapons/arming_sword",
				"weapons/military_pick",
				"weapons/arming_sword",
				"weapons/winged_mace",
				"weapons/morning_star",
				"weapons/flail"
			]);
			this.m.Skills.add(this.new("scripts/skills/perks/perk_underdog"));
		}

		this.m.Items.equip(this.new("scripts/items/" + weapons[this.Math.rand(0, weapons.len() - 1)]));
		local shields = [
			"shields/faction_kite_shield",
			"shields/faction_kite_shield",
			"shields/faction_heater_shield",
			"shields/faction_heater_shield",
			"shields/faction_heater_shield"
		];

		if (this.m.Items.hasEmptySlot(this.Const.ItemSlot.Offhand))
		{
			local shield = this.new("scripts/items/" + shields[this.Math.rand(0, shields.len() - 1)]);
			shield.setFaction(banner);
			this.m.Items.equip(shield);
		}

		local armor = [
			"armor/mail_hauberk",
			"armor/reinforced_mail_hauberk"
		];

		if (this.Const.DLC.Unhold)
		{
			armor.push("armor/footman_armor");

			if (banner == 5 || banner == 7 || banner == 10)
			{
				armor.push("armor/light_scale_armor");
			}
		}

		local a = this.new("scripts/items/" + armor[this.Math.rand(0, armor.len() - 1)]);

		if (a.getID() == "armor.body.mail_hauberk")
		{
			a.setVariant(28);
		}

		if (this.Const.DLC.Unhold)
		{
			local upgrades = [
				"armor_upgrades/joint_cover_upgrade",
				"armor_upgrades/joint_cover_upgrade",
				"armor_upgrades/mail_patch_upgrade",
				"armor_upgrades/joint_cover_upgrade",
				"armor_upgrades/mail_patch_upgrade",
				"armor_upgrades/joint_cover_upgrade",
				"armor_upgrades/mail_patch_upgrade"
			];

			if (this.Math.rand(1, 100) <= 75)
			{
				local upgrade = this.new("scripts/items/" + upgrades[this.Math.rand(0, upgrades.len() - 1)]);
				a.setUpgrade(upgrade);
			}
			else if (a.getID() == "armor.body.mail_hauberk")
			{
				this.getSprite("surcoat").setBrush("surcoat_" + (banner < 10 ? "0" + banner : banner));
			}
		}

		this.m.Items.equip(a);
		local helmet;

		if (this.Math.rand(1, 100) <= 67)
		{
			local helmets = [
				"helmets/bascinet_with_mail",
				"helmets/bascinet_with_mail",
				"helmets/closed_flat_top_helmet",
				"helmets/closed_flat_top_with_neckguard",
				"helmets/closed_flat_top_with_mail"
			];

			if (this.Const.DLC.Unhold)
			{
				helmets.push("helmets/barbute_helmet");
			}

			if (banner <= 4)
			{
				helmets.extend([
					"helmets/kettle_hat_with_closed_mail",
					"helmets/kettle_hat_with_closed_mail",
					"helmets/kettle_hat_with_closed_mail"
				]);
			}
			else if (banner <= 7)
			{
				helmets.extend([
					"helmets/flat_top_with_closed_mail",
					"helmets/flat_top_with_closed_mail",
					"helmets/flat_top_with_closed_mail"
				]);
			}
			else if (banner == 10)
			{
				helmets.extend([
					"helmets/kettle_hat_with_closed_mail",
					"helmets/kettle_hat_with_closed_mail",
					"helmets/kettle_hat_with_closed_mail"
				]);
			}
			else
			{
				helmets.extend([
					"helmets/nasal_helmet_with_closed_mail",
					"helmets/nasal_helmet_with_closed_mail",
					"helmets/nasal_helmet_with_closed_mail"
				]);
			}

			helmet = this.new("scripts/items/" + helmets[this.Math.rand(0, helmets.len() - 1)]);

			if (this.Math.rand(1, 100) <= 25)
			{
				if (banner == 10 && helmet.getID() == "armor.head.kettle_hat_with_closed_mail")
				{
					helmet.onPaint(this.Const.Items.Paint.WhiteGreenYellow);
				}
				else if (banner == 10)
				{
					helmet.setPlainVariant();
				}
				else if (banner <= 2)
				{
					helmet.onPaint(this.Const.Items.Paint.Red);
				}
				else if (banner == 8 || banner == 3)
				{
					helmet.onPaint(this.Const.Items.Paint.Black);
				}
				else if (banner == 9 || banner == 4)
				{
					helmet.onPaint(this.Const.Items.Paint.OrangeRed);
				}
				else if (banner == 5)
				{
					helmet.onPaint(this.Const.Items.Paint.WhiteGreenYellow);
				}
				else if (banner == 6)
				{
					helmet.onPaint(this.Const.Items.Paint.WhiteBlue);
				}
			}
			else
			{
				helmet.setPlainVariant();
			}
		}
		else
		{
			helmet = this.new("scripts/items/helmets/bascinet_faction_helmet");
			helmet.setVariant(banner);
		}

		this.m.Items.equip(helmet);
	}

});

