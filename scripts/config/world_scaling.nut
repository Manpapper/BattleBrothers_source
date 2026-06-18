local gt = this.getroottable();

if (!("World" in gt.Const))
{
	gt.Const.World <- {};
}

if (!("Scaling" in gt.Const.World))
{
	gt.Const.World.Scaling <- {};
}

gt.Const.World.Scaling.Brigands <- {
	MarksmanBullseyeDay = 20,
	MarksmanStatIncreaseDay = 40,
	RaiderStatIncreaseDay = 40,
	MarauderSpawnEarlyDay = 50,
	MarauderSpawnEarlyChance = 25,
	MarauderSpawnMidDay = 60,
	MarauderSpawnMidChance = 50,
	MarauderSpawnLateDay = 80,
	MarauderSpawnLateChance = 65,
	function GetMarauderSpawnChance( _days )
	{
		if (_days >= this.Const.World.Scaling.Brigands.MarauderSpawnLateDay)
		{
			return this.Const.World.Scaling.Brigands.MarauderSpawnLateChance;
		}
		else if (_days >= this.Const.World.Scaling.Brigands.MarauderSpawnMidDay)
		{
			return this.Const.World.Scaling.Brigands.MarauderSpawnMidChance;
		}
		else if (_days >= this.Const.World.Scaling.Brigands.MarauderSpawnEarlyDay)
		{
			return this.Const.World.Scaling.Brigands.MarauderSpawnEarlyChance;
		}
		else
		{
			return 0;
		}
	}

};
gt.Const.World.Scaling.Goblins <- {
	AmbusherExtraDamageDay = 180,
	SkirmisherBackstabberDay = 50,
	SkirmisherStatIncreaseDay = 50,
	SkirmisherSecondStatIncreaseDay = 90
};
gt.Const.World.Scaling.Orcs <- {
	YoungThrowingSpecDay = 70,
	YoungStatIncreaseDay = 150,
	BerserkerStatIncreaseDay = 190,
	WarriorStatIncreaseDay = 200,
	WarlordStatIncreaseDay = 200
};
gt.Const.World.Scaling.AncientDead <- {
	LegionaryPolearmSpecDay = 100,
	HonorGuardPolearmSpecDay = 100,
	SkullStatIncreaseDay = 25,
	SkullSecondStatIncreaseDay = 50
};
gt.Const.World.Scaling.Undead <- {
	WiedergangerFatigueMultDay = 20,
	WiedergangerDamageIncreaseDay = 90,
	FallenHeroStatIncreaseDay = 90,
	GeistStatIncreaseDay = 140
};
gt.Const.World.Scaling.Beasts <- {
	WebknechtDamageIncreaseDay = 25,
	WebknechtStatIncreaseDay = 50,
	UnholdDamageIncreaseDay = 90,
	SchratStatIncreaseDay = 250,
	LindwurmStatIncreaseDay = 170,
	LindwurmTailStatIncreaseDay = 180
};
gt.Const.World.Scaling.Barbarians <- {
	BeastmasterDodgeDay = 30,
	DrummerDodgeDay = 30,
	ThrallRelentlessDay = 20,
	ReaverRelentlessDay = 60
};
gt.Const.World.Scaling.Nomads <- {
	CutthroatDodgeDay = 35,
	OutlawDodgeDay = 40,
	OutlawStatIncreaseDay = 40,
	OutlawThreeHeadedFlailDay = 10,
	SlingerHeadHunterDay = 30,
	ArcherBullseyeDay = 20,
	ArcherStatIncreaseDay = 30,
	ArcherHeadHunterDay = 60,
	LeaderNimbleDay = 40
};

