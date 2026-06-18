this.flat_top_with_rusty_mail <- this.inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		this.helmet.create();
		this.m.ID = "armor.head.flat_top_with_rusty_mail";
		this.m.Name = "Flat Top with Rusty Mail";
		this.m.Description = "A worn flat full-metal helmet with a rusted mail coif covering the neck and face.";
		this.m.ShowOnCharacter = true;
		this.m.IsDroppedAsLoot = true;
		this.m.HideHair = true;
		this.m.HideBeard = true;
		local variants = [
			252
		];
		this.m.Variant = variants[this.Math.rand(0, variants.len() - 1)];
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 1250;
		this.m.Condition = 245;
		this.m.ConditionMax = 245;
		this.m.StaminaModifier = -20;
		this.m.Vision = -2;
	}

	function onPaint( _color )
	{
		switch(_color)
		{
		case this.Const.Items.Paint.None:
			this.m.Variant = 15;
			break;

		case this.Const.Items.Paint.Black:
			this.m.Variant = 135;
			break;

		case this.Const.Items.Paint.WhiteBlue:
			this.m.Variant = 132;
			break;

		case this.Const.Items.Paint.WhiteGreenYellow:
			this.m.Variant = 133;
			break;

		case this.Const.Items.Paint.OrangeRed:
			this.m.Variant = 134;
			break;

		case this.Const.Items.Paint.Red:
			this.m.Variant = 179;
			break;
		}

		this.updateVariant();
		this.updateAppearance();
	}

});

