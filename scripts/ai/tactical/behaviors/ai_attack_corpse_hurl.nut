this.ai_attack_corpse_hurl <- this.inherit("scripts/ai/tactical/behavior", {
	m = {
		PossibleSkills = [
			"actives.corpse_hurl_skill"
		],
		Skill = null,
		TargetTile = null,
		TargetScore = 0
	},
	function create()
	{
		this.m.ID = this.Const.AI.Behavior.ID.CorpseHurl;
		this.m.Order = this.Const.AI.Behavior.Order.CorpseHurl;
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
		local bestTarget = this.getBestTarget(_entity, targets);

		if (bestTarget.Target == null)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		this.m.TargetTile = bestTarget.Target;
		this.m.TargetScore = bestTarget.Score;
		return this.Const.AI.Behavior.Score.CorpseHurl * this.m.TargetScore * score;
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

	function getBestTarget( _entity, _targets )
	{
		local myTile = _entity.getTile();
		local bestTile;
		local bestTileScore = 0;
		local tiles = [];

		foreach( target in _targets )
		{
			if (target.Actor.getTile().IsHidingEntity)
			{
				continue;
			}

			tiles.push(target.Actor.getTile());

			for( local i = 0; i < 6; i = ++i )
			{
				if (!target.Actor.getTile().hasNextTile(i))
				{
				}
				else
				{
					tiles.push(target.Actor.getTile().getNextTile(i));
				}
			}
		}

		foreach( tile in tiles )
		{
			if (!this.m.Skill.isUsableOn(tile))
			{
				continue;
			}

			local score = 0;

			if (tile.IsOccupiedByActor)
			{
				local e = tile.getEntity();

				if (!_entity.isAlliedWith(e))
				{
					score = score + 2;

					if (e.getCurrentProperties().IsStunned || e.getCurrentProperties().IsRooted || tile.hasZoneOfControlOtherThan(e.getAlliedFactions()))
					{
						score = score + 1;
					}
				}
				else
				{
					score = score - 3;
				}
			}
			else
			{
				score = score - 2;
			}

			for( local i = 0; i < 6; i = ++i )
			{
				if (!tile.hasNextTile(i))
				{
				}
				else
				{
					local nextTile = tile.getNextTile(i);

					if (!nextTile.IsOccupiedByActor)
					{
					}
					else
					{
						local e = nextTile.getEntity();

						if (!_entity.isAlliedWith(e))
						{
							score = score + 2;

							if (e.getCurrentProperties().IsStunned || e.getCurrentProperties().IsRooted || tile.hasZoneOfControlOtherThan(e.getAlliedFactions()))
							{
								score = score + 1;
							}
						}
						else
						{
							score = score - 4;
						}
					}
				}
			}

			if (score <= 0)
			{
				continue;
			}

			if (score > bestTileScore)
			{
				bestTile = tile;
				bestTileScore = score;
			}
		}

		return {
			Target = bestTile,
			Score = bestTileScore
		};
	}

});

