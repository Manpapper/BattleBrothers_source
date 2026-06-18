this.named_sellswords_armor <- this.inherit("scripts/items/armor/named/named_armor", {
	m = {},
	function create()
	{
		this.named_armor.create();
		this.m.ID = "armor.body.named_sellswords_armor";
		this.m.Description = "This piece of layered armor belonged to a famed mercenary once. Its high resilience and flexibility make it a remarkable piece of craftsmanship. And it even comes with extra pockets!";
		this.m.NameList = [
			"Mercenary Coat",
			"Sellsword\'s Hide",
			"Layered Armor",
			"Plated Coat"
		];
		local variants = [
			101,
			101,
			127
		];
		this.m.Variant = variants[this.Math.rand(0, variants.len() - 1)];
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorChainmailImpact;
		this.m.InventorySound = this.Const.Sound.ArmorChainmailImpact;
		this.m.Value = 10000;
		this.m.Condition = 260;
		this.m.ConditionMax = 260;
		this.m.StaminaModifier = -32;
		this.randomizeValues();
	}

});

