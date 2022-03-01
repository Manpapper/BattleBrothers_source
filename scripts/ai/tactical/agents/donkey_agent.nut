this.donkey_agent <- this.inherit("scripts/ai/tactical/agent", {
	m = {},
	function create()
	{
		this.agent.create();
		this.m.ID = this.Const.AI.Agent.ID.Idle;
		this.m.Properties.OverallMagnetismMult = 10.0;
	}

	function onAddBehaviors()
	{
	}

	function onUpdate()
	{
	}

});

