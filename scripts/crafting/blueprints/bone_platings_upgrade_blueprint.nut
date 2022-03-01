this.bone_platings_upgrade_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.bone_platings_upgrade";
		this.m.PreviewCraftable = this.new("scripts/items/armor_upgrades/bone_platings_upgrade");
		this.m.Cost = 450;
		local ingredients = [
			{
				Script = "scripts/items/misc/lindwurm_bones_item",
				Num = 1
			},
			{
				Script = "scripts/items/misc/unhold_bones_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/armor_upgrades/bone_platings_upgrade"));
	}

});

