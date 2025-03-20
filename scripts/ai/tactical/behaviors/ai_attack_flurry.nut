this.ai_attack_flurry <- this.inherit("scripts/ai/tactical/behavior", {
	m = {
		PossibleSkills = [
			"actives.flurry_skill"
		],
		TargetTile = null,
		Skill = null,
		TargetScore = 0,
		MinTargets = 1
	},
	function create()
	{
		this.m.ID = this.Const.AI.Behavior.ID.Flurry;
		this.m.Order = this.Const.AI.Behavior.Order.Flurry;
		this.behavior.create();
	}

	function onEvaluate( _entity )
	{
		this.m.Skill = null;
		local score = this.getProperties().BehaviorMult[this.m.ID];

		if (_entity.getActionPoints() < this.Const.Movement.AutoEndTurnBelowAP)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		this.m.Skill = this.selectSkill(this.m.PossibleSkills);

		if (this.m.Skill == null)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		local targets = this.getAgent().getKnownOpponents();
		local bestTarget = this.getBestTarget(_entity, this.m.Skill);

		if (bestTarget.Target == null)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		this.m.TargetTile = bestTarget.Target;
		this.m.TargetScore = bestTarget.Score;
		return this.Const.AI.Behavior.Score.Flurry * this.m.TargetScore * score;
	}

	function onExecute( _entity )
	{
		this.m.Skill.use(this.m.TargetTile);

		if (_entity.isAlive())
		{
			this.getAgent().declareAction();

			if (this.m.Skill.getDelay() != 0)
			{
				this.getAgent().declareEvaluationDelay(this.m.Skill.getDelay());
			}
		}

		this.m.Skill = null;
		this.m.TargetTile = null;
		return true;
	}

	function getBestTarget( _entity, _skill )
	{
		local ourTile = _entity.getTile();
		local bestTarget;
		local score = 0;
		local numTargets = 0;

		for( local i = 0; i != 6; i = ++i )
		{
			if (!ourTile.hasNextTile(i))
			{
			}
			else
			{
				local tile = ourTile.getNextTile(i);

				if (!tile.IsOccupiedByActor)
				{
				}
				else if (this.Math.abs(tile.Level - ourTile.Level) > 1)
				{
				}
				else
				{
					local target = tile.getEntity();

					if (target.isAlliedWith(_entity))
					{
					}
					else
					{
						score = score + this.queryTargetValue(_entity, target, _skill);
						numTargets = ++numTargets;

						if (bestTarget == null && _skill.onVerifyTarget(ourTile, tile))
						{
							bestTarget = tile;
						}
					}
				}
			}
		}

		if (numTargets < this.m.MinTargets)
		{
			return {
				Target = null,
				Score = 0.0
			};
		}
		else
		{
			return {
				Target = bestTarget,
				Score = score
			};
		}
	}

	function onQueryTile( _tile, _tag )
	{
		_tag.push(_tile);
	}

});

