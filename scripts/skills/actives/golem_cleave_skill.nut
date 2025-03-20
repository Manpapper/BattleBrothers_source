this.golem_cleave_skill <- this.inherit("scripts/skills/actives/cleave", {
	m = {},
	function create()
	{
		this.cleave.create();
		this.m.ID = "actives.golem_cleave";
		this.m.DirectDamageMult = 0.25;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_skill == this)
		{
			_properties.DamageRegularMin += 20;
			_properties.DamageRegularMax += 35;
			_properties.DamageArmorMult += 0.75;
		}
	}

});

