this.golem_bash_skill <- this.inherit("scripts/skills/actives/bash", {
	m = {},
	function create()
	{
		this.bash.create();
		this.m.ID = "actives.golem_bash";
		this.m.DirectDamageMult = 0.4;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_skill == this)
		{
			_properties.FatigueDealtPerHitMult += 2.0;
			_properties.DamageRegularMin += 20;
			_properties.DamageRegularMax += 35;
			_properties.DamageArmorMult += 0.75;
		}
	}

});

