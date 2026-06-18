this.bandit_marauder <- this.inherit("scripts/entity/tactical/human", {
	m = {},
	function create()
	{
		this.m.Type = this.Const.EntityType.BanditMarauder;
		this.m.BloodType = this.Const.BloodType.Red;
		this.m.XP = this.Const.Tactical.Actor.BanditMarauder.XP;
		this.human.create();
		this.m.Faces = this.Const.Faces.AllMale;
		this.m.Hairs = this.Const.Hair.UntidyMale;
		this.m.HairColors = this.Const.HairColors.All;
		this.m.Beards = this.Const.Beards.Raider;
		this.m.AIAgent = this.new("scripts/ai/tactical/agents/bandit_melee_agent");
		this.m.AIAgent.setActor(this);
	}

	function onInit()
	{
		this.human.onInit();
		local b = this.m.BaseProperties;
		b.setValues(this.Const.Tactical.Actor.BanditMarauder);
		this.m.ActionPoints = b.ActionPoints;
		this.m.Hitpoints = b.Hitpoints;
		this.m.CurrentProperties = clone b;
		this.setAppearance();
		this.getSprite("socket").setBrush("bust_base_bandits");
		local dirt = this.getSprite("dirt");
		dirt.Visible = true;
		dirt.Alpha = this.Math.rand(150, 255);
		this.getSprite("armor").Saturation = 0.85;
		this.getSprite("helmet").Saturation = 0.85;
		this.getSprite("helmet_damage").Saturation = 0.85;
		this.getSprite("shield_icon").Saturation = 0.85;
		this.getSprite("shield_icon").setBrightness(0.85);
		b.IsSpecializedInSwords = true;
		b.IsSpecializedInAxes = true;
		b.IsSpecializedInMaces = true;
		b.IsSpecializedInFlails = true;
		b.IsSpecializedInPolearms = true;
		b.IsSpecializedInThrowing = true;
		b.IsSpecializedInHammers = true;
		b.IsSpecializedInSpears = true;
		b.IsSpecializedInCleavers = true;
		this.m.Skills.add(this.new("scripts/skills/perks/perk_brawny"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_coup_de_grace"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_bullseye"));
		this.m.Skills.add(this.new("scripts/skills/actives/rotation"));
		this.m.Skills.add(this.new("scripts/skills/actives/recover_skill"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_battle_forged"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_crippling_strikes"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_sundering_strikes"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_quick_hands"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_head_hunter"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_backstabber"));
	}

	function onAppearanceChanged( _appearance, _setDirty = true )
	{
		this.actor.onAppearanceChanged(_appearance, false);
		this.setDirty(true);
	}

	function assignRandomEquipment()
	{
		local r;
		local weapons = [];

		if (this.Math.rand(1, 100) <= 55)
		{
			weapons.extend([
				"weapons/pike",
				"weapons/longaxe",
				"weapons/longaxe",
				"weapons/exesword",
				"weapons/warbrand"
			]);

			if (this.Const.DLC.Unhold)
			{
				weapons.extend([
					"weapons/two_handed_flail",
					"weapons/two_handed_mace",
					"weapons/longsword"
				]);
			}
		}
		else
		{
			weapons.extend([
				"weapons/hand_axe",
				"weapons/flail",
				"weapons/arming_sword"
			]);
		}

		this.m.Items.equip(this.new("scripts/items/" + weapons[this.Math.rand(0, weapons.len() - 1)]));
		local secondaryWeapons = [
			"weapons/throwing_axe",
			"weapons/javelin"
		];

		if (this.Const.DLC.Unhold)
		{
			secondaryWeapons.push("weapons/throwing_spear");
		}

		if (this.Math.rand(1, 100) <= 50)
		{
			this.m.Items.addToBag(this.new("scripts/items/" + secondaryWeapons[this.Math.rand(0, secondaryWeapons.len() - 1)]));
		}

		local armorList = [
			"armor/rusted_mail_hauberk",
			"armor/patchwork_scale_armor"
		];

		if (!this.Tactical.State.isScenarioMode() && this.World.getTime().Days >= 60)
		{
			armorList.push("armor/pillaged_heavy_lamellar_armor");
		}

		local armor = this.new("scripts/items/" + armorList[this.Math.rand(0, armorList.len() - 1)]);
		this.m.Items.equip(armor);
		local upgrades = [
			"armor_upgrades/rusted_mail_patch_upgrade"
		];

		if (this.Math.rand(1, 100) <= 40 && this.Const.DLC.Unhold)
		{
			upgrades.push("armor_upgrades/metal_plating_upgrade");
		}

		if (this.Math.rand(1, 100) <= 33)
		{
			local upgrade = this.new("scripts/items/" + upgrades[this.Math.rand(0, upgrades.len() - 1)]);
			armor.setUpgrade(upgrade);
		}

		local helmets;

		if (this.Math.rand(1, 100) <= 90)
		{
			helmets = [
				"helmets/nasal_helmet_with_rusty_mail",
				"helmets/marauder_helmet_with_rusty_mail",
				"helmets/marauder_helmet_with_rusty_mail_cloth",
				"helmets/kettle_hat_with_rusty_mail"
			];

			if (!this.Tactical.State.isScenarioMode() && this.World.getTime().Days >= 60)
			{
				helmets.push("helmets/marauder_helmet_with_closed_mail");
				helmets.push("helmets/marauder_helmet_with_closed_mail");
				helmets.push("helmets/flat_top_with_rusty_mail");
			}
		}
		else
		{
			helmets = [
				"helmets/headscarf",
				"helmets/headscarf",
				"helmets/rusty_mail_coif"
			];
			this.m.Skills.add(this.new("scripts/skills/perks/perk_steel_brow"));
		}

		this.m.Items.equip(this.new("scripts/items/" + helmets[this.Math.rand(0, helmets.len() - 1)]));
	}

});

