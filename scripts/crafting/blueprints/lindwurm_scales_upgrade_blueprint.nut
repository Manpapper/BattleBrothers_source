this.lindwurm_scales_upgrade_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.lindwurm_scales_upgrade";
		this.m.PreviewCraftable = this.new("scripts/items/armor_upgrades/lindwurm_scales_upgrade");
		this.m.Cost = 350;
		local ingredients = [
			{
				Script = "scripts/items/misc/lindwurm_scales_item",
				Num = 1
			},
			{
				Script = "scripts/items/misc/unhold_hide_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/armor_upgrades/lindwurm_scales_upgrade"));
	}

});

