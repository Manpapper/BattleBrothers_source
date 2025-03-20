this.golem_slash_skill <- this.inherit("scripts/skills/actives/slash", {
	m = {},
	function create()
	{
		this.slash.create();
		this.m.ID = "actives.golem_slash";
		this.m.DirectDamageMult = 0.2;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_skill == this)
		{
			_properties.DamageRegularMin += 30;
			_properties.DamageRegularMax += 40;
			_properties.DamageArmorMult += 0.75;
			_properties.MeleeSkill += 10;
		}
	}

});

