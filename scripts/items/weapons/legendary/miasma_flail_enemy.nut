this.miasma_flail_enemy <- this.inherit("scripts/items/weapons/legendary/miasma_flail", {
	m = {},
	function create()
	{
		this.miasma_flail.create();
		this.m.IsDroppedAsLoot = false;
	}

});

