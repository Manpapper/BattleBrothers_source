this.lindwurm_shield_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.lindwurm_shield";
		this.m.PreviewCraftable = this.new("scripts/items/shields/special/craftable_lindwurm_shield");
		this.m.Cost = 500;
		local ingredients = [
			{
				Script = "scripts/items/misc/lindwurm_scales_item",
				Num = 1
			},
			{
				Script = "scripts/items/misc/lindwurm_bones_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/shields/special/craftable_lindwurm_shield"));
	}

});

