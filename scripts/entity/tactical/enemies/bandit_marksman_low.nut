this.bandit_marksman_low <- this.inherit("scripts/entity/tactical/enemies/bandit_marksman", {
	m = {},
	function create()
	{
		this.bandit_marksman.create();
		this.m.IsLow = true;
	}

	function onInit()
	{
		this.bandit_marksman.onInit();
		this.m.BaseProperties.Initiative -= 10;
		this.m.BaseProperties.RangedSkill -= 10;
		this.m.Skills.update();
	}

	function assignRandomEquipment()
	{
		local weapons = [
			[
				"weapons/short_bow",
				"ammo/quiver_of_arrows"
			],
			[
				"weapons/short_bow",
				"ammo/quiver_of_arrows"
			],
			[
				"weapons/light_crossbow",
				"ammo/quiver_of_bolts"
			]
		];
		local n = this.Math.rand(0, weapons.len() - 1);

		foreach( w in weapons[n] )
		{
			this.m.Items.equip(this.new("scripts/items/" + w));
		}

		this.m.Items.addToBag(this.new("scripts/items/weapons/knife"));
		this.m.Items.equip(this.new("scripts/items/armor/leather_wraps"));

		if (this.Math.rand(1, 100) <= 50)
		{
			local r = this.Math.rand(1, 2);

			if (r == 1)
			{
				this.m.Items.equip(this.new("scripts/items/helmets/headscarf"));
			}
			else if (r == 2)
			{
				this.m.Items.equip(this.new("scripts/items/helmets/mouth_piece"));
			}
		}
	}

});

