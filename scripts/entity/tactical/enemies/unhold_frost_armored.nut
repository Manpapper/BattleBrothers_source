this.unhold_frost_armored <- this.inherit("scripts/entity/tactical/enemies/unhold_frost", {
	m = {
		HasTurned = false,
		HasBeenWhipped = true
	},
	function setWhipped( _w )
	{
		this.m.HasBeenWhipped = _w;
	}

	function create()
	{
		this.unhold_frost.create();
		this.m.Type = this.Const.EntityType.BarbarianUnholdFrost;
		this.m.XP += 100;
	}

	function onInit()
	{
		this.unhold_frost.onInit();
		this.getSprite("socket").setBrush("bust_base_wildmen_01");
	}

	function assignRandomEquipment()
	{
		this.m.Items.equip(this.new("scripts/items/armor/barbarians/unhold_armor_heavy"));
		this.m.Items.equip(this.new("scripts/items/helmets/barbarians/unhold_helmet_heavy"));
	}

	function onTurnStart()
	{
		this.actor.onTurnStart();

		if (this.Time.getRound() >= 2 && !this.m.HasTurned && !this.m.HasBeenWhipped && !this.Tactical.State.isAutoRetreat())
		{
			this.m.Skills.getSkillByID("racial.unhold").spawnIcon("status_effect_107", this.getTile());

			if (this.Math.rand(1, 100) <= 50)
			{
				this.playSound(this.Const.Sound.ActorEvent.Other1, 0.75, this.Math.rand(90, 100) * 0.01);
			}

			if (this.Math.rand(1, 100) <= 33)
			{
				this.updateAchievement("FriendOrFoe", 1, 1);
				this.m.HasTurned = true;
				this.setFaction(this.Tactical.State.isScenarioMode() ? this.Const.Faction.Beasts : this.World.FactionManager.getFactionOfType(this.Const.FactionType.Beasts).getID());
				this.getSprite("socket").setBrush("bust_base_beasts");
			}
		}

		this.m.HasBeenWhipped = false;
	}

});

