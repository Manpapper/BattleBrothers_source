this.orc_young_low <- this.inherit("scripts/entity/tactical/enemies/orc_young", {
	m = {},
	function create()
	{
		this.orc_young.create();
	}

	function onInit()
	{
		this.orc_young.onInit();
	}

	function onFinish()
	{
		this.actor.onFinish();
	}

	function assignRandomEquipment()
	{
		local r;
		local weapon;

		if (this.Math.rand(1, 100) <= 25)
		{
			this.m.Items.addToBag(this.new("scripts/items/weapons/greenskins/orc_javelin"));
		}

		if (this.Math.rand(1, 100) <= 75)
		{
			local r = this.Math.rand(1, 2);

			if (r == 1)
			{
				weapon = this.new("scripts/items/weapons/greenskins/orc_wooden_club");
			}
			else if (r == 2)
			{
				weapon = this.new("scripts/items/weapons/greenskins/orc_metal_club");
			}
		}
		else
		{
			r = this.Math.rand(1, 3);

			if (r == 1)
			{
				weapon = this.new("scripts/items/weapons/greenskins/goblin_falchion");
			}
			else if (r == 2)
			{
				weapon = this.new("scripts/items/weapons/hatchet");
			}
			else if (r == 3)
			{
				weapon = this.new("scripts/items/weapons/morning_star");
			}
		}

		if (this.m.Items.hasEmptySlot(this.Const.ItemSlot.Mainhand))
		{
			this.m.Items.equip(weapon);
		}
		else
		{
			this.m.Items.addToBag(weapon);
		}

		if (this.Math.rand(1, 100) <= 33)
		{
			this.m.Items.equip(this.new("scripts/items/shields/greenskins/orc_light_shield"));
		}

		r = this.Math.rand(1, 5);

		if (r == 1)
		{
			this.m.Items.equip(this.new("scripts/items/armor/greenskins/orc_young_very_light_armor"));
		}
		else if (r == 2)
		{
			this.m.Items.equip(this.new("scripts/items/armor/greenskins/orc_young_light_armor"));
		}
		else if (r == 3)
		{
			this.m.Items.equip(this.new("scripts/items/armor/greenskins/orc_young_medium_armor"));
		}

		r = this.Math.rand(1, 4);

		if (r == 1)
		{
			this.m.Items.equip(this.new("scripts/items/helmets/greenskins/orc_young_light_helmet"));
		}
		else if (r == 2)
		{
			this.m.Items.equip(this.new("scripts/items/helmets/greenskins/orc_young_medium_helmet"));
		}
	}

});

