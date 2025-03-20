this.golem_thrust_skill <- this.inherit("scripts/skills/actives/thrust", {
	m = {},
	function create()
	{
		this.thrust.create();
		this.m.ID = "actives.golem_thrust";
		this.m.DirectDamageMult = 0.2;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_skill == this)
		{
			_properties.DamageRegularMin += 25;
			_properties.DamageRegularMax += 30;
			_properties.DamageArmorMult += 0.9;
			_properties.MeleeSkill += 20;
		}
	}

});

