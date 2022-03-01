this.ceremonial_season_situation <- this.inherit("scripts/entity/world/settlements/situations/situation", {
	m = {},
	function create()
	{
		this.situation.create();
		this.m.ID = "situation.ceremonial_seasonn";
		this.m.Name = "Ceremonial Season";
		this.m.Description = "During the ceremonial season, large amounts of incense are used by temples. The demand and prices for incense are at an all-time high.";
		this.m.Icon = "ui/settlement_status/settlement_effect_44.png";
		this.m.Rumors = [
			"During this time of the year, the temples in %settlement% smoke like a hovel that\'s on fire! I wonder where they get all that incense from...",
			"If you are a godly person you might want to head to %settlement% to burn some incense and say some prayers."
		];
		this.m.IsStacking = false;
		this.m.ValidDays = 3;
	}

	function getAddedString( _s )
	{
		return _s + " now has " + this.m.Name;
	}

	function getRemovedString( _s )
	{
		return _s + " no longer has " + this.m.Name;
	}

	function onAdded( _settlement )
	{
	}

	function onUpdate( _modifiers )
	{
		_modifiers.IncensePriceMult *= 1.5;
	}

});

