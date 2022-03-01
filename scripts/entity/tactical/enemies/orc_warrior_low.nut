this.orc_warrior_low <- this.inherit("scripts/entity/tactical/enemies/orc_warrior", {
	m = {},
	function create()
	{
		this.orc_warrior.create();
	}

	function onInit()
	{
		this.orc_warrior.onInit();
		this.m.BaseProperties.DamageTotalMult -= 0.1;
		this.m.Skills.update();
	}

	function onFinish()
	{
		this.actor.onFinish();
	}

	function assignRandomEquipment()
	{
		local r;
		r = this.Math.rand(1, 2);

		if (r == 1)
		{
			this.m.Items.equip(this.new("scripts/items/weapons/greenskins/orc_axe"));
		}
		else if (r == 2)
		{
			this.m.Items.equip(this.new("scripts/items/weapons/greenskins/orc_cleaver"));
		}

		if (this.Math.rand(1, 100) <= 66)
		{
			this.m.Items.equip(this.new("scripts/items/shields/greenskins/orc_heavy_shield"));
		}

		r = this.Math.rand(1, 2);

		if (r == 1)
		{
			this.m.Items.equip(this.new("scripts/items/armor/greenskins/orc_warrior_light_armor"));
		}
		else if (r == 2)
		{
			this.m.Items.equip(this.new("scripts/items/armor/greenskins/orc_warrior_medium_armor"));
		}

		r = this.Math.rand(1, 3);

		if (r == 1)
		{
			this.m.Items.equip(this.new("scripts/items/helmets/greenskins/orc_warrior_light_helmet"));
		}
		else if (r == 2)
		{
			this.m.Items.equip(this.new("scripts/items/helmets/greenskins/orc_warrior_medium_helmet"));
		}
	}

});

