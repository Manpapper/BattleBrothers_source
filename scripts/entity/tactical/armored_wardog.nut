this.armored_wardog <- this.inherit("scripts/entity/tactical/wardog", {
	m = {},
	function create()
	{
		this.wardog.create();
	}

	function assignRandomEquipment()
	{
		this.m.Items.equip(this.new("scripts/items/armor/special/wardog_armor"));
	}

});

