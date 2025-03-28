this.goblin_ambusher_low <- this.inherit("scripts/entity/tactical/enemies/goblin_ambusher", {
	m = {},
	function create()
	{
		this.goblin_ambusher.create();
		this.m.IsLow = true;
	}

	function onInit()
	{
		this.goblin_ambusher.onInit();
		this.m.BaseProperties.MeleeSkill -= 5;
		this.m.BaseProperties.RangedSkill -= 5;
		this.m.BaseProperties.RangedDefense -= 5;
		this.m.BaseProperties.MeleeDefense -= 5;
		this.m.BaseProperties.DamageDirectMult = 1.0;
		this.m.Skills.update();
	}

	function assignRandomEquipment()
	{
		local r;
		this.m.Items.equip(this.new("scripts/items/ammo/quiver_of_arrows"));
		local r = this.Math.rand(1, 1);

		if (r == 1)
		{
			this.m.Items.equip(this.new("scripts/items/weapons/greenskins/goblin_bow"));
		}

		this.m.Items.addToBag(this.new("scripts/items/weapons/greenskins/goblin_notched_blade"));
		this.m.Items.equip(this.new("scripts/items/armor/greenskins/goblin_skirmisher_armor"));
		this.m.Items.equip(this.new("scripts/items/helmets/greenskins/goblin_skirmisher_helmet"));
	}

});

