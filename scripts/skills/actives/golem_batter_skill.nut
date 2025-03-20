this.golem_batter_skill <- this.inherit("scripts/skills/actives/hammer", {
	m = {},
	function create()
	{
		this.hammer.create();
		this.m.ID = "actives.golem_batter";
		this.m.DirectDamageMult = 0.5;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_skill == this)
		{
			_properties.FatigueDealtPerHitMult += 2.0;
			_properties.DamageRegularMin += 15;
			_properties.DamageRegularMax += 30;
			_properties.DamageArmorMult += 1.5;
		}
	}

});

