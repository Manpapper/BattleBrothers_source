this.raided_situation <- this.inherit("scripts/entity/world/settlements/situations/situation", {
	m = {},
	function create()
	{
		this.situation.create();
		this.m.ID = "situation.raided";
		this.m.Name = "Raided";
		this.m.Description = "This place has been recently raided! It\'s suffered damage, has lost valuable goods and supplies, and lives were lost.";
		this.m.Icon = "ui/settlement_status/settlement_effect_08.png";
		this.m.Rumors = [
			"You one of them raiders? Sure look and smell like one! Your men pillage %settlement%? Get out of here, I says, we don\'t want your kind around!",
			"Folks\' arrivin\' from %settlement%, sayin\' it\'s been raided and plundered right good. Poor sobs, but what\'re we to do? Ain\'t got much ourselves. It\'s up to the lord to protect them!",
			"These are dangerous times indeed, sellsword. I just got word that %settlement% was plundered and raided not two nights past."
		];
		this.m.IsStacking = false;
		this.m.ValidDays = 4;
	}

	function getAddedString( _s )
	{
		return _s + " has been " + this.m.Name;
	}

	function getRemovedString( _s )
	{
		return _s + " no longer is " + this.m.Name;
	}

	function onAdded( _settlement )
	{
		_settlement.resetShop();
		_settlement.resetRoster(true);
	}

	function onUpdate( _modifiers )
	{
		_modifiers.RecruitsMult *= 0.5;
		_modifiers.RarityMult *= 0.5;
	}

});

