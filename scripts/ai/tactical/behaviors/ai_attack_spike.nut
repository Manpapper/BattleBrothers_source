this.ai_attack_spike <- this.inherit("scripts/ai/tactical/behavior", {
	m = {
		PossibleSkills = [
			"actives.spike_skill"
		],
		Skill = null,
		TargetTile = null,
		TargetScore = 0,
		MinTargets = 1,
		Length = 3
	},
	function create()
	{
		this.m.ID = this.Const.AI.Behavior.ID.Spike;
		this.m.Order = this.Const.AI.Behavior.Order.Spike;
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
		return this.Const.AI.Behavior.Score.Spike * this.m.TargetScore * score;
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
		local myTile = _entity.getTile();
		local bestTarget;
		local bestScore = 0;
		local bestCombinedValue = 0;
		local numTargets = 0;
		local tiles = [];
		this.Tactical.queryTilesInRange(myTile, this.m.Skill.getMinRange(), this.m.Skill.getMaxRange(), false, [], this.onQueryTile, tiles);

		foreach( targetTile in tiles )
		{
			if (!_skill.onVerifyTarget(myTile, targetTile))
			{
				continue;
			}

			if (!targetTile.IsOccupiedByActor)
			{
				continue;
			}

			local dir = myTile.getDirectionTo(targetTile);
			local score = 0;
			local combinedValue = 0.0;

			if (this.Math.abs(targetTile.Level - myTile.Level) <= this.m.Skill.getMaxLevelDifference())
			{
				if (targetTile.getEntity().isAlliedWith(_entity))
				{
					combinedValue = combinedValue - 3.0 * (1.0 - this.getProperties().TargetPriorityHittingAlliesMult) * targetTile.getEntity().getCurrentProperties().TargetAttractionMult;
				}
				else
				{
					combinedValue = combinedValue + this.queryTargetValue(_entity, targetTile.getEntity(), _skill);
					numTargets = ++numTargets;
					score = score + 1;
				}
			}

			local nextTile = targetTile;

			for( local j = 0; j < this.m.Length - 1; j = ++j )
			{
				if (!nextTile.hasNextTile(dir))
				{
				}
				else
				{
					local tile = targetTile.getNextTile(dir);

					if (this.Math.abs(tile.Level - myTile.Level) <= this.m.Skill.getMaxLevelDifference() && tile.IsOccupiedByActor)
					{
						if (tile.getEntity().isAlliedWith(_entity))
						{
							combinedValue = combinedValue - 3.0 * (1.0 - this.getProperties().TargetPriorityHittingAlliesMult) * tile.getEntity().getCurrentProperties().TargetAttractionMult;
						}
						else
						{
							combinedValue = combinedValue + this.queryTargetValue(_entity, tile.getEntity(), _skill);
							numTargets = ++numTargets;
							score = score + 1;
						}
					}

					nextTile = tile;
				}
			}

			if (score > bestScore || score == bestScore && combinedValue > bestCombinedValue)
			{
				bestTarget = targetTile;
				bestCombinedValue = combinedValue;
				bestScore = score;
			}
		}

		local score = this.Math.maxf(0.0, bestCombinedValue / 2.0);

		if (numTargets < this.m.MinTargets)
		{
			return {
				Target = null,
				Score = 0.0
			};
		}

		return {
			Target = bestTarget,
			Score = score
		};
	}

	function onQueryTile( _tile, _tag )
	{
		_tag.push(_tile);
	}

});

