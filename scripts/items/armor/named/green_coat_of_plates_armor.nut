this.green_coat_of_plates_armor <- this.inherit("scripts/items/armor/named/named_armor", {
	m = {},
	function create()
	{
		this.named_armor.create();
		this.m.ID = "armor.body.green_coat_of_plates";
		this.m.Description = "A rare coat of plates enhanced with chainmail and additional padding. A piece of true craftsmanship!";
		this.m.NameList = [
			"Coat of Plates",
			"Bulwark",
			"Carapace",
			"Shell",
			"Plate Cuirass",
			"Plate Coat",
			"Harness",
			"Ward"
		];
		local variants = [
			43,
			43,
			43,
			43,
			43,
			122,
			123,
			124,
			125,
			126
		];
		this.m.Variant = variants[this.Math.rand(0, variants.len() - 1)];
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 15000;
		this.m.Condition = 320;
		this.m.ConditionMax = 320;
		this.m.StaminaModifier = -42;
		this.randomizeValues();
	}

});

