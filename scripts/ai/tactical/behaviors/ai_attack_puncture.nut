this.ai_attack_puncture <- this.inherit("scripts/ai/tactical/behavior", {
	m = {
		TargetTile = null,
		PossibleSkills = [
			"actives.puncture"
		],
		Skill = null
	},
	function create()
	{
		this.m.ID = this.Const.AI.Behavior.ID.Puncture;
		this.m.Order = this.Const.AI.Behavior.Order.Puncture;
		this.behavior.create();
	}

	function onEvaluate( _entity )
	{
		this.m.TargetTile = null;
		this.m.Skill = null;
		local score = this.getProperties().BehaviorMult[this.m.ID];

		if (_entity.getActionPoints() < this.Const.Movement.AutoEndTurnBelowAP)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		if (_entity.getMoraleState() == this.Const.MoraleState.Fleeing)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		if (!this.getAgent().hasVisibleOpponent())
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		this.m.Skill = this.selectSkill(this.m.PossibleSkills);

		if (this.m.Skill == null)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		score = score * this.getFatigueScoreMult(this.m.Skill);
		local targets = this.queryTargetsInMeleeRange();

		if (targets.len() == 0)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		local bestTarget = this.getBestTarget(_entity, this.m.Skill, targets);

		if (bestTarget.Target == null)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		this.m.TargetTile = bestTarget.Target.getTile();
		score = score * bestTarget.Score;
		return this.Const.AI.Behavior.Score.Puncture * score;
	}

	function onExecute( _entity )
	{
		if (this.m.IsFirstExecuted)
		{
			this.getAgent().adjustCameraToTarget(this.m.TargetTile);
			this.m.IsFirstExecuted = false;
			return false;
		}

		if (this.m.TargetTile != null && this.m.TargetTile.IsOccupiedByActor)
		{
			if (this.Const.AI.VerboseMode)
			{
				this.logInfo("* " + _entity.getName() + ": Using Puncture against " + this.m.TargetTile.getEntity().getName() + "!");
			}

			this.m.Skill.use(this.m.TargetTile);

			if (_entity.isAlive() && (!_entity.isHiddenToPlayer() || this.m.TargetTile.IsVisibleForPlayer))
			{
				this.getAgent().declareAction();
			}

			this.m.TargetTile = null;
		}

		return true;
	}

	function getBestTarget( _entity, _skill, _targets )
	{
		local bestTarget;
		local bestScore = 0.0;

		foreach( target in _targets )
		{
			if (!_skill.isUsableOn(target.getTile()))
			{
				continue;
			}

			if (target.getArmor(this.Const.BodyPart.Body) <= 25 || target.getArmor(this.Const.BodyPart.Head) <= 15)
			{
				continue;
			}

			local p = _entity.getCurrentProperties();
			local armor = target.getArmor(this.Const.BodyPart.Body) * (p.getHitchance(this.Const.BodyPart.Body) / 100.0) + target.getArmor(this.Const.BodyPart.Head) * (p.getHitchance(this.Const.BodyPart.Head) / 100.0);

			if (armor <= 40 && target.getHitpoints() > _entity.getCurrentProperties().getRegularDamageAverage())
			{
				continue;
			}

			local score = this.queryTargetValue(_entity, target, _skill);
			score = score * this.Math.pow(armor / 100.0, 1.1);

			if (score > bestScore)
			{
				bestTarget = target;
				bestScore = score;
			}
		}

		return {
			Target = bestTarget,
			Score = bestScore
		};
	}

});

