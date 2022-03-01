this.random_scenario <- this.inherit("scripts/scenarios/world/starting_scenario", {
	m = {},
	function create()
	{
		this.m.ID = "scenario.random";
		this.m.Name = "Random";
		this.m.Description = "[p=c][img]gfx/ui/events/event_74.png[/img][/p][p]Start a campaign with a randomly picked origin. How exciting![/p]";
		this.m.Difficulty = 0;
		this.m.Order = 900;
	}

	function isValid()
	{
		return this.Const.DLC.Wildmen;
	}

});

