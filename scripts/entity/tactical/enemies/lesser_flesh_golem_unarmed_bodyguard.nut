this.lesser_flesh_golem_unarmed_bodyguard <- this.inherit("scripts/entity/tactical/enemies/lesser_flesh_golem_unarmed", {
	m = {
		IsCreatingAgent = false
	},
	function create()
	{
		this.lesser_flesh_golem_unarmed.create();
		this.m.AIAgent = this.new("scripts/ai/tactical/agents/lesser_flesh_golem_bodyguard_agent");
		this.m.AIAgent.setActor(this);
	}

});

