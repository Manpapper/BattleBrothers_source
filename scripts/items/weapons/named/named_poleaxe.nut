this.named_poleaxe <- this.inherit("scripts/items/weapons/named/named_weapon", {
	m = {},
	function create()
	{
		this.named_weapon.create();
		this.m.Variant = this.Math.rand(1, 2);
		this.updateVariant();
		this.m.ID = "weapon.named_poleaxe";
		this.m.NameList = this.Const.Strings.AxeNames;
		this.m.Description = "A singularly well-crafted polearm for knightly duels. The intricate decorations upon its striking head leave little doubt to the wielder\'s status.";
		this.m.Categories = "Polearm, Two-Handed";
		this.m.SlotType = this.Const.ItemSlot.Mainhand;
		this.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
		this.m.ItemType = this.Const.Items.ItemType.Named | this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded;
		this.m.AddGenericSkill = true;
		this.m.IsAgainstShields = true;
		this.m.ShowQuiver = false;
		this.m.ShowArmamentIcon = true;
		this.m.Value = 4200;
		this.m.ShieldDamage = 24;
		this.m.Condition = 72.0;
		this.m.ConditionMax = 72.0;
		this.m.StaminaModifier = -13;
		this.m.RangeMin = 1;
		this.m.RangeMax = 1;
		this.m.RangeIdeal = 1;
		this.m.RegularDamage = 50;
		this.m.RegularDamageMax = 75;
		this.m.ArmorDamageMult = 1.1;
		this.m.DirectDamageMult = 0.4;
		this.m.ChanceToHitHead = 5;
		this.randomizeValues();
	}

	function updateVariant()
	{
		this.m.IconLarge = "weapons/melee/poleaxe_01_named_0" + this.m.Variant + ".png";
		this.m.Icon = "weapons/melee/poleaxe_01_named_0" + this.m.Variant + "_70x70.png";
		this.m.ArmamentIcon = "icon_pollaxe_01_named_0" + this.m.Variant;
	}

	function onEquip()
	{
		this.weapon.onEquip();
		local strike = this.new("scripts/skills/actives/assault_skill");
		this.addSkill(strike);
		local skillToAdd = this.new("scripts/skills/actives/smite_skill");
		skillToAdd.m.Icon = "skills/active_241.png";
		skillToAdd.m.IconDisabled = "skills/active_241_sw.png";
		skillToAdd.m.Overlay = "active_241";
		skillToAdd.m.IsPolearm = true;
		skillToAdd.m.DirectDamageMult = 0.4;
		this.addSkill(skillToAdd);
		local skillToAdd = this.new("scripts/skills/actives/split_shield");
		skillToAdd.setFatigueCost(skillToAdd.getFatigueCostRaw() + 5);
		this.addSkill(skillToAdd);
	}

});

