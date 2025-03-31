this.flesh_cradle <- this.inherit("scripts/entity/tactical/actor", {
	m = {
		Flip = false,
		IsDestroyed = false
	},
	function create()
	{
		this.m.IsActingEachTurn = false;
		this.m.IsNonCombatant = true;
		this.m.IsShakingOnHit = false;
		this.m.Type = this.Const.EntityType.FleshCradle;
		this.m.BloodType = this.Const.BloodType.None;
		this.m.MoraleState = this.Const.MoraleState.Ignore;
		this.m.XP = this.Const.Tactical.Actor.FleshCradle.XP;
		this.m.BloodSplatterOffset = this.createVec(0, 0);
		this.actor.create();
		this.m.AIAgent = this.new("scripts/ai/tactical/agents/donkey_agent");
		this.m.AIAgent.setActor(this);
	}

	function setDestroyed( _destroyed )
	{
		this.m.IsDestroyed = _destroyed;
		this.kill();
	}

	function getIsDestroyed()
	{
		return this.m.IsDestroyed;
	}

	function onDeath( _killer, _skill, _tile, _fatalityType )
	{
		if (_tile != null)
		{
			local decal;
			decal = _tile.spawnDetail("flesh_cradle_01_destroyed", this.Const.Tactical.DetailFlag.Corpse, this.m.Flip);
			this.spawnTerrainDropdownEffect(_tile);
		}

		local tileLoot = this.getLootForTile(_killer, []);
		this.dropLoot(_tile, tileLoot, !this.m.Flip);
		this.actor.onDeath(_killer, _skill, _tile, _fatalityType);
	}

	function onInit()
	{
		this.actor.onInit();
		local b = this.m.BaseProperties;
		b.setValues(this.Const.Tactical.Actor.FleshCradle);
		b.IsImmuneToKnockBackAndGrab = true;
		b.IsImmuneToStun = true;
		b.IsImmuneToRoot = true;
		b.IsAffectedByInjuries = false;
		b.IsImmuneToBleeding = true;
		b.IsImmuneToPoison = true;
		b.IsImmuneToDisarm = true;
		b.IsImmuneToHeadshots = true;
		b.IsAffectedByNight = false;
		b.IsMovable = false;
		b.TargetAttractionMult = 0.0;
		this.m.IsAttackable = false;
		this.m.ActionPoints = b.ActionPoints;
		this.m.Hitpoints = b.Hitpoints;
		this.m.CurrentProperties = clone b;
		this.m.ActionPointCosts = this.Const.DefaultMovementAPCost;
		this.m.FatigueCosts = this.Const.DefaultMovementFatigueCost;
		this.m.Flip = this.Math.rand(0, 1) == 1;
		local bottom = this.addSprite("bottom");
		bottom.setBrush("flesh_cradle_01_bottom");
		bottom.setHorizontalFlipping(this.m.Flip);
		local top = this.addSprite("top");
		top.setBrush("flesh_cradle_01_top");
		top.setHorizontalFlipping(this.m.Flip);
		this.addDefaultStatusSprites();
		this.m.Skills.update();
	}

});

