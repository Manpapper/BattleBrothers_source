this.kettle_hat_with_rusty_mail <- this.inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		this.helmet.create();
		this.m.ID = "armor.head.kettle_hat_with_rusty_mail";
		this.m.Name = "Kettle Hat with Rusty Mail";
		this.m.Description = "A worn helmet with a broad rim and a rusted mail coif covering the neck and face.";
		this.m.ShowOnCharacter = true;
		this.m.IsDroppedAsLoot = true;
		this.m.HideHair = true;
		this.m.HideBeard = true;
		local variants = [
			251
		];
		this.m.Variant = variants[this.Math.rand(0, variants.len() - 1)];
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 1050;
		this.m.Condition = 230;
		this.m.ConditionMax = 230;
		this.m.StaminaModifier = -19;
		this.m.Vision = -2;
	}

	function setPlainVariant()
	{
		this.setVariant(11);
	}

	function onPaint( _color )
	{
		switch(_color)
		{
		case this.Const.Items.Paint.None:
			this.m.Variant = 11;
			break;

		case this.Const.Items.Paint.Black:
			this.m.Variant = 119;
			break;

		case this.Const.Items.Paint.WhiteBlue:
			this.m.Variant = 116;
			break;

		case this.Const.Items.Paint.WhiteGreenYellow:
			this.m.Variant = 117;
			break;

		case this.Const.Items.Paint.OrangeRed:
			this.m.Variant = 118;
			break;

		case this.Const.Items.Paint.Red:
			this.m.Variant = 175;
			break;
		}

		this.updateVariant();
		this.updateAppearance();
	}

});

