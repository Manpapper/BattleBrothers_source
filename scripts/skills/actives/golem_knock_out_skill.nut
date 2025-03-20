this.golem_knock_out_skill <- this.inherit("scripts/skills/actives/knock_out", {
	m = {},
	function create()
	{
		this.knock_out.create();
		this.m.ID = "actives.golem_knock_out";
		this.m.DirectDamageMult = 0.5;
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

