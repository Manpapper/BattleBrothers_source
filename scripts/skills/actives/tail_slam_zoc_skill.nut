this.tail_slam_zoc_skill <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "actives.tail_slam_zoc";
		this.m.Name = "Tail Slam";
		this.m.Description = "";
		this.m.KilledString = "Crushed";
		this.m.Icon = "skills/active_108.png";
		this.m.IconDisabled = "skills/active_108.png";
		this.m.Overlay = "active_108";
		this.m.SoundOnUse = [
			"sounds/enemies/lindwurm_tail_slam_01.wav",
			"sounds/enemies/lindwurm_tail_slam_02.wav",
			"sounds/enemies/lindwurm_tail_slam_03.wav"
		];
		this.m.SoundOnHit = [
			"sounds/enemies/lindwurm_tail_slam_hit_01.wav",
			"sounds/enemies/lindwurm_tail_slam_02.wav",
			"sounds/enemies/lindwurm_tail_slam_hit_03.wav"
		];
		this.m.Type = this.Const.SkillType.Active;
		this.m.Order = this.Const.SkillOrder.OffensiveTargeted;
		this.m.IsSerialized = false;
		this.m.IsActive = true;
		this.m.IsTargeted = true;
		this.m.IsStacking = false;
		this.m.IsAttack = true;
		this.m.IsIgnoredAsAOO = false;
		this.m.IsAOE = false;
		this.m.InjuriesOnBody = this.Const.Injury.BluntBody;
		this.m.InjuriesOnHead = this.Const.Injury.BluntHead;
		this.m.HitChanceBonus = 0;
		this.m.ActionPointCost = 4;
		this.m.FatigueCost = 10;
		this.m.MinRange = 1;
		this.m.MaxRange = 1;
		this.m.DirectDamageMult = 0.35;
		this.m.ChanceDecapitate = 0;
		this.m.ChanceDisembowel = 0;
		this.m.ChanceSmash = 66;
	}

	function applyEffectToTarget( _user, _target, _targetTile )
	{
		local applyEffect = this.Math.rand(1, 2);

		if (applyEffect == 1 && !_target.getCurrentProperties().IsImmuneToStun && !_target.getCurrentProperties().IsStunned)
		{
			if (_target.isNonCombatant() || _target.getCurrentProperties().IsImmuneToStun || _target.getCurrentProperties().IsStunned)
			{
				return;
			}

			local stun = this.new("scripts/skills/effects/stunned_effect");
			_target.getSkills().add(stun);

			if (!_user.isHiddenToPlayer() && _targetTile.IsVisibleForPlayer)
			{
				this.Tactical.EventLog.log(stun.getLogEntryOnAdded(this.Const.UI.getColorizedEntityName(_user), this.Const.UI.getColorizedEntityName(_target)));
			}
		}
		else
		{
			if (_target.isNonCombatant() || _target.getCurrentProperties().IsImmuneToDaze)
			{
				return;
			}

			local daze = this.new("scripts/skills/effects/dazed_effect");
			_target.getSkills().add(daze);

			if (!_user.isHiddenToPlayer() && _targetTile.IsVisibleForPlayer)
			{
				this.Tactical.EventLog.log(daze.getLogEntryOnAdded(this.Const.UI.getColorizedEntityName(_user), this.Const.UI.getColorizedEntityName(_target)));
			}
		}
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_skill == this)
		{
			_properties.DamageRegularMin += 60;
			_properties.DamageRegularMax += 120;
			_properties.DamageArmorMult *= 1.5;
		}
	}

	function onUse( _user, _targetTile )
	{
		this.spawnAttackEffect(_targetTile, this.Const.Tactical.AttackEffectChop);
		local ret = this.attackEntity(_user, _targetTile.getEntity());

		if (!_user.isAlive() || _user.isDying())
		{
			return ret;
		}

		if (ret && _targetTile.IsOccupiedByActor && _targetTile.getEntity().isAlive() && !_targetTile.getEntity().isDying())
		{
			this.applyEffectToTarget(_user, _targetTile.getEntity(), _targetTile);
		}

		return ret;
	}

});

