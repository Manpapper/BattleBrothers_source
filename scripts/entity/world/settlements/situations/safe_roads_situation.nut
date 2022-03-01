this.safe_roads_situation <- this.inherit("scripts/entity/world/settlements/situations/situation", {
	m = {},
	function create()
	{
		this.situation.create();
		this.m.ID = "situation.safe_roads";
		this.m.Name = "Safe Roads";
		this.m.Description = "The roads leading here have been reasonably safe of late, which allowed for many a profitable trade to be made and the settlement to prosper somewhat.";
		this.m.Icon = "ui/settlement_status/settlement_effect_06.png";
		this.m.Rumors = [
			"Seems the brigands around %settlement% are having a rough time now with all those patrols going on.",
			"Just got back from %settlement% last night. No brigand in sight on the roads, thank the gods.",
			"Been telling my cousin for years to stop robbing people on the road. Ain\'t no way for it but to end badly. And right I was, it did. Got his comeuppance the other day by %settlement%. Place is crawling with militia."
		];
		this.m.IsStacking = false;
	}

	function onAdded( _settlement )
	{
		_settlement.removeSituationByID("situation.ambushed_trade_routes");
		_settlement.resetShop();
	}

	function onUpdate( _modifiers )
	{
		_modifiers.PriceMult *= 1.1;
		_modifiers.RarityMult *= 1.1;
	}

});

