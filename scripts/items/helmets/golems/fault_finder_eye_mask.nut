this.fault_finder_eye_mask <- this.inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		this.helmet.create();
		this.m.ID = "armor.head.fault_finder_eye_mask";
		this.m.Name = "Occult Eye Mask";
		this.m.Description = "";
		this.m.ShowOnCharacter = true;
		this.m.IsDroppedAsLoot = true;
		this.m.HideHair = false;
		this.m.HideBeard = true;
		this.m.ReplaceSprite = true;
		this.m.Variant = 245;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorLeatherImpact;
		this.m.InventorySound = this.Const.Sound.ClothEquip;
		this.m.Value = 0;
		this.m.Condition = 30;
		this.m.ConditionMax = 30;
		this.m.StaminaModifier = 0;
		this.m.Vision = -3;
	}

});

