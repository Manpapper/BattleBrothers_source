this.unload_order <- this.inherit("scripts/ai/world/world_behavior", {
	m = {},
	function create()
	{
		this.world_behavior.create();
		this.m.ID = this.Const.World.AI.Behavior.ID.Unload;
	}

	function onExecute( _entity, _hasChanged )
	{
		local entities = this.World.getAllEntitiesAndOneLocationAtPos(_entity.getPos(), 1.0);

		foreach( settlement in entities )
		{
			if (settlement.isLocation() && settlement.isEnterable())
			{
				foreach( item in _entity.getInventory() )
				{
					settlement.addImportedProduce(item);
				}

				_entity.clearInventory();
				break;
			}
		}

		this.getController().popOrder();
		return true;
	}

});

