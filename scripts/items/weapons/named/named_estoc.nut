this.named_estoc <- this.inherit("scripts/items/weapons/named/named_weapon", {
	m = {},
	function create()
	{
		this.named_weapon.create();
		this.m.Variant = this.Math.rand(1, 2);
		this.updateVariant();
		this.m.ID = "weapon.named_estoc";
		this.m.NameList = this.Const.Strings.FencingSwordNames;
		this.m.Description = "Crafting the swift piercing blade of any estoc is no small feat, yet this piece stands as exceptional even amongst its peers.";
		this.m.Categories = "Dagger, Two-Handed";
		this.m.SlotType = this.Const.ItemSlot.Mainhand;
		this.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
		this.m.ItemType = this.Const.Items.ItemType.Named | this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded;
		this.m.AddGenericSkill = true;
		this.m.ShowQuiver = false;
		this.m.ShowArmamentIcon = true;
		this.m.Value = 2600;
		this.m.Condition = 64.0;
		this.m.ConditionMax = 64.0;
		this.m.StaminaModifier = -9;
		this.m.RegularDamage = 35;
		this.m.RegularDamageMax = 50;
		this.m.ArmorDamageMult = 0.75;
		this.m.DirectDamageMult = 0.45;
		this.m.ChanceToHitHead = 5;
		this.randomizeValues();
	}

	function updateVariant()
	{
		this.m.IconLarge = "weapons/melee/estoc_01_named_0" + this.m.Variant + ".png";
		this.m.Icon = "weapons/melee/estoc_01_named_0" + this.m.Variant + "_70x70.png";
		this.m.ArmamentIcon = "icon_estoc_01_named_0" + this.m.Variant;
	}

	function onEquip()
	{
		this.weapon.onEquip();
		local stab = this.new("scripts/skills/actives/estoc_stab_skill");
		this.addSkill(stab);
		this.addSkill(this.new("scripts/skills/actives/perforate_skill"));
		this.addSkill(this.new("scripts/skills/actives/skewer_skill"));
	}

});

