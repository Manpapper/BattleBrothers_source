this.snow_storms_situation <- this.inherit("scripts/entity/world/settlements/situations/situation", {
	m = {},
	function create()
	{
		this.situation.create();
		this.m.ID = "situation.snow_storms";
		this.m.Name = "Snow Storms";
		this.m.Description = "Snow storms have more or less isolated this settlement from trade. Because few new goods have been coming in, the selection is lower and prices are higher.";
		this.m.Icon = "ui/settlement_status/settlement_effect_20.png";
		this.m.Rumors = [
			"Bad weather out there towards %settlement%, looks like a full-blown blizzard."
		];
		this.m.IsStacking = false;
		this.m.ValidDays = 3;
	}

	function getAddedString( _s )
	{
		return _s + " suffers from " + this.m.Name;
	}

	function getRemovedString( _s )
	{
		return _s + " no longer suffers from " + this.m.Name;
	}

	function onAdded( _settlement )
	{
		_settlement.resetShop();
	}

	function onUpdate( _modifiers )
	{
		_modifiers.BuyPriceMult *= 1.2;
		_modifiers.SellPriceMult *= 1.1;
		_modifiers.RarityMult *= 0.75;
	}

});

