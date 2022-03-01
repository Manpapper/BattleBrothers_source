this.conscript_polearm <- this.inherit("scripts/entity/tactical/humans/conscript", {
	m = {},
	function create()
	{
		this.conscript.create();
	}

	function onInit()
	{
		this.conscript.onInit();
	}

	function assignRandomEquipment()
	{
		local r;
		local banner = 3;

		if (!this.Tactical.State.isScenarioMode())
		{
			banner = this.World.FactionManager.getFaction(this.getFaction()).getBanner();
		}
		else
		{
			banner = 13;
		}

		r = this.Math.rand(1, 2);

		if (r == 1)
		{
			this.m.Items.equip(this.new("scripts/items/weapons/oriental/polemace"));
		}
		else if (r == 2)
		{
			this.m.Items.equip(this.new("scripts/items/weapons/oriental/swordlance"));
		}

		r = this.Math.rand(1, 3);

		if (r <= 2)
		{
			local armor = this.new("scripts/items/armor/oriental/linothorax");

			if (banner == 12)
			{
				armor.setVariant(9);
			}
			else if (banner == 13)
			{
				armor.setVariant(10);
			}
			else if (banner == 14)
			{
				armor.setVariant(8);
			}

			this.m.Items.equip(armor);
		}
		else if (r == 3)
		{
			this.m.Items.equip(this.new("scripts/items/armor/oriental/southern_mail_shirt"));
		}

		local helmet = this.new("scripts/items/helmets/oriental/southern_head_wrap");

		if (banner == 12)
		{
			helmet.setVariant(12);
		}
		else if (banner == 13)
		{
			helmet.setVariant(8);
		}
		else if (banner == 14)
		{
			helmet.setVariant(7);
		}

		this.m.Items.equip(helmet);
	}

});

