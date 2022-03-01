this.schrat_shield_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.schrat_shield";
		this.m.PreviewCraftable = this.new("scripts/items/shields/special/craftable_schrat_shield");
		this.m.Cost = 450;
		local ingredients = [
			{
				Script = "scripts/items/misc/ancient_wood_item",
				Num = 1
			},
			{
				Script = "scripts/items/misc/glowing_resin_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/shields/special/craftable_schrat_shield"));
	}

});

