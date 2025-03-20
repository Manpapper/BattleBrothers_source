this.golem_decapitate_skill <- this.inherit("scripts/skills/actives/decapitate", {
	m = {},
	function create()
	{
		this.decapitate.create();
		this.m.ID = "actives.golem_decapitate";
		this.m.DirectDamageMult = 0.25;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_targetEntity == null)
		{
			return;
		}

		if (_skill == this)
		{
			_properties.DamageRegularMin += 20;
			_properties.DamageRegularMax += 35;
			_properties.DamageArmorMult += 0.75;
			_properties.DamageRegularMult += 1.0 - _targetEntity.getHitpoints() / (_targetEntity.getHitpointsMax() * 1.0);
		}
	}

});

