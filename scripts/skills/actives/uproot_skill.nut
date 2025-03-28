this.uproot_skill <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "actives.uproot";
		this.m.Name = "Uproot";
		this.m.Description = "";
		this.m.KilledString = "Crushed";
		this.m.Icon = "skills/active_122.png";
		this.m.IconDisabled = "skills/active_122.png";
		this.m.Overlay = "active_122";
		this.m.SoundOnUse = [
			"sounds/enemies/dlc2/schrat_uproot_01.wav",
			"sounds/enemies/dlc2/schrat_uproot_02.wav",
			"sounds/enemies/dlc2/schrat_uproot_03.wav",
			"sounds/enemies/dlc2/schrat_uproot_04.wav",
			"sounds/enemies/dlc2/schrat_uproot_05.wav"
		];
		this.m.SoundOnHit = [
			"sounds/enemies/dlc2/schrat_uproot_hit_01.wav",
			"sounds/enemies/dlc2/schrat_uproot_hit_02.wav",
			"sounds/enemies/dlc2/schrat_uproot_hit_03.wav",
			"sounds/enemies/dlc2/schrat_uproot_hit_04.wav"
		];
		this.m.Type = this.Const.SkillType.Active;
		this.m.Order = this.Const.SkillOrder.OffensiveTargeted;
		this.m.Delay = 750;
		this.m.IsSerialized = false;
		this.m.IsActive = true;
		this.m.IsTargeted = true;
		this.m.IsStacking = false;
		this.m.IsAttack = true;
		this.m.IsIgnoredAsAOO = true;
		this.m.IsAOE = true;
		this.m.IsTargetingActor = false;
		this.m.InjuriesOnBody = this.Const.Injury.PiercingBody;
		this.m.InjuriesOnHead = this.Const.Injury.PiercingHead;
		this.m.DirectDamageMult = 0.5;
		this.m.ActionPointCost = 5;
		this.m.FatigueCost = 25;
		this.m.MinRange = 1;
		this.m.MaxRange = 1;
		this.m.ChanceDecapitate = 0;
		this.m.ChanceDisembowel = 25;
		this.m.ChanceSmash = 25;
	}

	function applyEffectToTarget( _user, _target, _targetTile )
	{
		local stagger = this.new("scripts/skills/effects/staggered_effect");
		_target.getSkills().add(stagger);

		if (!_user.isHiddenToPlayer() && _targetTile.IsVisibleForPlayer)
		{
			this.Tactical.EventLog.log(stagger.getLogEntryOnAdded(this.Const.UI.getColorizedEntityName(_user), this.Const.UI.getColorizedEntityName(_target)));
		}
	}

	function onUse( _user, _targetTile )
	{
		local myTile = _user.getTile();
		local dir = myTile.getDirectionTo(_targetTile);
		this.Tactical.spawnAttackEffect("uproot", _targetTile, 0, -50, 100, 300, 100, this.createVec(0, 90), 200, this.createVec(0, -90), true);

		for( local i = 0; i < this.Const.Tactical.DustParticles.len(); i = ++i )
		{
			this.Tactical.spawnParticleEffect(false, this.Const.Tactical.DustParticles[i].Brushes, _targetTile, this.Const.Tactical.DustParticles[i].Delay, this.Const.Tactical.DustParticles[i].Quantity * 0.5, this.Const.Tactical.DustParticles[i].LifeTimeQuantity * 0.5, this.Const.Tactical.DustParticles[i].SpawnRate, this.Const.Tactical.DustParticles[i].Stages, this.createVec(0, -30));
		}

		if (_targetTile.IsOccupiedByActor && _targetTile.getEntity().isAttackable() && !(_targetTile.getEntity().getType() == this.Const.EntityType.Schrat || _targetTile.getEntity().getType() == this.Const.EntityType.SchratSmall))
		{
			if (_targetTile.getEntity().m.IsShakingOnHit)
			{
				this.Tactical.getShaker().shake(_targetTile.getEntity(), _targetTile, 7);
				_user.playSound(this.Const.Sound.ActorEvent.Move, 2.0);
			}

			this.Time.scheduleEvent(this.TimeUnit.Virtual, 200, function ( _tag )
			{
				if (this.attackEntity(_user, _targetTile.getEntity()) && !_targetTile.IsEmpty)
				{
					this.applyEffectToTarget(_user, _targetTile.getEntity(), _targetTile);
				}
			}.bindenv(this), null);
		}

		if (_targetTile.hasNextTile(dir))
		{
			local forwardTile = _targetTile.getNextTile(dir);
			this.Time.scheduleEvent(this.TimeUnit.Virtual, 200, function ( _tag )
			{
				this.Tactical.spawnAttackEffect("uproot", forwardTile, 0, -50, 100, 300, 100, this.createVec(0, 90), 200, this.createVec(0, -90), true);

				for( local i = 0; i < this.Const.Tactical.DustParticles.len(); i = ++i )
				{
					this.Tactical.spawnParticleEffect(false, this.Const.Tactical.DustParticles[i].Brushes, forwardTile, this.Const.Tactical.DustParticles[i].Delay, this.Const.Tactical.DustParticles[i].Quantity * 0.5, this.Const.Tactical.DustParticles[i].LifeTimeQuantity * 0.5, this.Const.Tactical.DustParticles[i].SpawnRate, this.Const.Tactical.DustParticles[i].Stages, this.createVec(0, -30));
				}

				if (forwardTile.IsOccupiedByActor && forwardTile.getEntity().m.IsShakingOnHit)
				{
					this.Tactical.getShaker().shake(forwardTile.getEntity(), forwardTile, 7);
					_user.playSound(this.Const.Sound.ActorEvent.Move, 2.0);
				}
			}.bindenv(this), null);

			if (forwardTile.IsOccupiedByActor && forwardTile.getEntity().isAttackable() && this.Math.abs(forwardTile.Level - myTile.Level) <= 1 && !(forwardTile.getEntity().getType() == this.Const.EntityType.Schrat || forwardTile.getEntity().getType() == this.Const.EntityType.SchratSmall))
			{
				this.Time.scheduleEvent(this.TimeUnit.Virtual, 400, function ( _tag )
				{
					if (this.attackEntity(_user, forwardTile.getEntity()) && !forwardTile.IsEmpty)
					{
						this.applyEffectToTarget(_user, forwardTile.getEntity(), forwardTile);
					}
				}.bindenv(this), null);
			}

			if (forwardTile.hasNextTile(dir))
			{
				local furtherForwardTile = forwardTile.getNextTile(dir);
				this.Time.scheduleEvent(this.TimeUnit.Virtual, 400, function ( _tag )
				{
					this.Tactical.spawnAttackEffect("uproot", furtherForwardTile, 0, -50, 100, 300, 100, this.createVec(0, 90), 200, this.createVec(0, -90), true);

					for( local i = 0; i < this.Const.Tactical.DustParticles.len(); i = ++i )
					{
						this.Tactical.spawnParticleEffect(false, this.Const.Tactical.DustParticles[i].Brushes, furtherForwardTile, this.Const.Tactical.DustParticles[i].Delay, this.Const.Tactical.DustParticles[i].Quantity * 0.5, this.Const.Tactical.DustParticles[i].LifeTimeQuantity * 0.5, this.Const.Tactical.DustParticles[i].SpawnRate, this.Const.Tactical.DustParticles[i].Stages, this.createVec(0, -30));
					}

					if (furtherForwardTile.IsOccupiedByActor && furtherForwardTile.getEntity().m.IsShakingOnHit)
					{
						this.Tactical.getShaker().shake(furtherForwardTile.getEntity(), furtherForwardTile, 7);
						_user.playSound(this.Const.Sound.ActorEvent.Move, 2.0);
					}
				}.bindenv(this), null);

				if (furtherForwardTile.IsOccupiedByActor && furtherForwardTile.getEntity().isAttackable() && !(furtherForwardTile.getEntity().getType() == this.Const.EntityType.Schrat || furtherForwardTile.getEntity().getType() == this.Const.EntityType.SchratSmall))
				{
					this.Time.scheduleEvent(this.TimeUnit.Virtual, 600, function ( _tag )
					{
						if (this.attackEntity(_user, furtherForwardTile.getEntity()) && !furtherForwardTile.IsEmpty)
						{
							this.applyEffectToTarget(_user, furtherForwardTile.getEntity(), furtherForwardTile);
						}
					}.bindenv(this), null);
				}

				  // [284]  OP_CLOSE          0      6    0    0
			}

			  // [285]  OP_CLOSE          0      5    0    0
		}

		return true;
	}

	function onUpdate( _properties )
	{
		_properties.DamageRegularMin += 70;
		_properties.DamageRegularMax += 100;
		_properties.DamageArmorMult *= 0.85;
	}

});

