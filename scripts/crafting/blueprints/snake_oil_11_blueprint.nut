this.snake_oil_11_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.snake_oil_11";
		this.m.PreviewCraftable = this.new("scripts/items/misc/snake_oil_item");
		this.m.Cost = 50;
		local ingredients = [
			{
				Script = "scripts/items/misc/spider_silk_item",
				Num = 3
			},
			{
				Script = "scripts/items/misc/poison_gland_item",
				Num = 3
			}
		];
		this.init(ingredients);
	}

	function isCraftable()
	{
		if (!this.World.Retinue.hasFollower("follower.alchemist"))
		{
			return false;
		}

		return this.blueprint.isCraftable();
	}

	function isQualified()
	{
		if (!this.World.Retinue.hasFollower("follower.alchemist"))
		{
			return false;
		}

		return this.blueprint.isQualified();
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/misc/snake_oil_item"));
	}

});

