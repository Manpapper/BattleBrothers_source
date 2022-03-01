this.armored_warhound <- this.inherit("scripts/entity/tactical/warhound", {
	m = {},
	function create()
	{
		this.warhound.create();
	}

	function assignRandomEquipment()
	{
		this.m.Items.equip(this.new("scripts/items/armor/special/wardog_armor"));
	}

});

