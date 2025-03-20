this.golem_lash_skill <- this.inherit("scripts/skills/actives/lash_skill", {
	m = {},
	function create()
	{
		this.lash_skill.create();
		this.m.ID = "actives.golem_lash";
		this.m.DirectDamageMult = 0.3;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_skill == this)
		{
			_properties.DamageRegularMin += 20;
			_properties.DamageRegularMax += 45;
			_properties.DamageArmorMult += 0.8;
			_properties.HitChance[this.Const.BodyPart.Head] += 100.0;
		}
	}

});

