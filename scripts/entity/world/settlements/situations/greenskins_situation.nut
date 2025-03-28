this.greenskins_situation <- this.inherit("scripts/entity/world/settlements/situations/situation", {
	m = {},
	function create()
	{
		this.situation.create();
		this.m.ID = "situation.greenskins";
		this.m.Name = "Marauding Greenskins";
		this.m.Description = "Greenskins are terrorizing the surrounding lands, and many lives have been lost as orcs or goblins continue to raid outlying farms and raze caravans. Supplies are beginning to run low and people become desperate.";
		this.m.Icon = "ui/settlement_status/settlement_effect_01.png";
		this.m.Rumors = [
			"I heard rumors that vile greenskins are marauding around %settlement%! Is it true? I hope they don\'t make their way over here...",
			"Did you see the columns of smoke in the evening sky? They are rising over from %settlement% where greenskins are burning and pillaging the countryside.",
			"Here, take a look at what\'s left of my hand! Can hardly use it anymore on account of it having no fingers since that run-in with greenskins a while ago. Now I hear they are back, marauding around %settlement% right as we speak."
		];
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
		_settlement.resetShop();
		_settlement.resetRoster(true);
	}

	function onUpdate( _modifiers )
	{
		_modifiers.RarityMult *= 0.75;
		_modifiers.RecruitsMult *= 0.75;
	}

});

