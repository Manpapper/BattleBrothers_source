this.named_buckler_shield <- this.inherit("scripts/items/shields/named/named_shield", {
	m = {},
	function create()
	{
		this.named_shield.create();
		this.m.ID = "shield.named_buckler";
		this.m.NameList = this.Const.Strings.ShieldNames;
		this.m.Description = "This buckler has been crafted entirely from metal, vastly enhancing its durability. Though it offers poor protection against ranged attacks, it is far lighter to handle than larger shields.";
		this.m.AddGenericSkill = true;
		this.m.ShowOnCharacter = true;
		this.m.SoundOnHit = this.Const.Sound.ShieldHitMetal;
		this.m.Variant = 1;
		this.updateVariant();
		this.m.Value = 150;
		this.m.MeleeDefense = 10;
		this.m.RangedDefense = 5;
		this.m.StaminaModifier = -4;
		this.m.Condition = 48;
		this.m.ConditionMax = 48;
		this.randomizeValues();
	}

	function updateVariant()
	{
		this.m.Sprite = "shield_buckler_01_named_0" + this.m.Variant;
		this.m.SpriteDamaged = "shield_buckler_01_named_0" + this.m.Variant + "_damaged";
		this.m.ShieldDecal = "shield_buckler_01_named_0" + this.m.Variant + "_destroyed";
		this.m.IconLarge = "shields/inventory_buckler_shield_01_named_0" + this.m.Variant + ".png";
		this.m.Icon = "shields/icon_buckler_shield_01_named_0" + this.m.Variant + ".png";
	}

	function onEquip()
	{
		this.shield.onEquip();
		this.addSkill(this.new("scripts/skills/actives/knock_back"));
	}

});

