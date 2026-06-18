this.marauder_helmet_with_rusty_mail_cloth <- this.inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		this.helmet.create();
		this.m.ID = "armor.head.marauder_helmet_with_rusty_mail_cloth";
		this.m.Name = "Marauder Helmet with Rusty Mail";
		this.m.Description = "A rusted helmet with an attached mail neck guard commonly used by coastal raiders.";
		this.m.ShowOnCharacter = true;
		this.m.IsDroppedAsLoot = true;
		this.m.HideHair = true;
		this.m.HideBeard = true;
		local variants = [
			250
		];
		this.m.Variant = variants[this.Math.rand(0, variants.len() - 1)];
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorChainmailImpact;
		this.m.InventorySound = this.Const.Sound.ArmorChainmailImpact;
		this.m.Value = 700;
		this.m.Condition = 180;
		this.m.ConditionMax = 180;
		this.m.StaminaModifier = -14;
		this.m.Vision = -2;
	}

});

