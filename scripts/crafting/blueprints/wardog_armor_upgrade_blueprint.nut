this.wardog_armor_upgrade_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.wardog_armor_upgrade";
		this.m.PreviewCraftable = this.new("scripts/items/misc/wardog_armor_upgrade_item");
		this.m.Cost = 50;
		local ingredients = [
			{
				Script = "scripts/items/misc/werewolf_pelt_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/misc/wardog_armor_upgrade_item"));
	}

});

