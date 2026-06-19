this.perk_shield_bash <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.shield_bash";
		this.m.Name = this.Const.Strings.PerkName.ShieldBash;
		this.m.Description = this.Const.Strings.PerkDescription.ShieldBash;
		this.m.Icon = "ui/perks/perk_22.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onTriggeredMovement( _skill, _targetEntity, _hitInfo )
	{
		if (_skill != null && _skill.getID() == "actives.knock_back")
		{
			local p = this.getContainer().getActor().getCurrentProperties();
			local damage = this.Math.rand(10, 25) * p.DamageTotalMult;
			_hitInfo.DamageRegular += damage * p.DamageRegularMult;
			_hitInfo.DamageFatigue += 10;
			_hitInfo.DamageArmor += this.Math.floor(damage * 0.5);
		}
	}

});

