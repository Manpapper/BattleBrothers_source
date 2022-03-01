local gt = this.getroottable();

if (!("World" in gt.Const))
{
	gt.Const.World <- {};
}

if (!("Spawn" in gt.Const.World))
{
	gt.Const.World.Spawn <- {};
}

gt.Const.World.Spawn.GreenskinHorde <- [
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 9
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 7
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 10
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 11
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarriorLOW,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 8
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.OrcYoungLOW,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 9
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 8
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 12
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoungLOW,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 8
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 10
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 7
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarriorLOW,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarriorLOW,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 5
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 4
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 3
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 5
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 5
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 6
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 7
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarriorLOW,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarlord,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarriorLOW,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarlord,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarlord,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarlord,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarlord,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarlord,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarlord,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarlord,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinOverseer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 14
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarlord,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 6
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 7
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 9
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinShaman,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 3
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 6
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinShaman,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 8
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoungLOW,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 5
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinShaman,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinOverseer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarlord,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarlord,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarriorLOW,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarlord,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 11
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.OrcYoungLOW,
				Num = 11
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 11
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 14
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 8
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 5
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinShaman,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarlord,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinShaman,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinOverseer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarlord,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_06",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 17
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 6
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarlord,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 8
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinShaman,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinOverseer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarlord,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_05",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinShaman,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinOverseer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarlord,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_goblin_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 4
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_goblin_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 5
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 4
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 3
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinOverseer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 15
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinOverseer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinShaman,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinShaman,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 3
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinShaman,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinOverseer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinShaman,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 4
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinShaman,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarriorLOW,
				Num = 6
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarriorLOW,
				Num = 4
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_orc_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcYoung,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarriorLOW,
				Num = 4
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinOverseer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinShaman,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 6
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 16
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinOverseer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinShaman,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 8
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinOverseer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 6
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinOverseer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinShaman,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinOverseer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 12
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 14
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinOverseer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinShaman,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 8
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinOverseer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinShaman,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarriorLOW,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 8
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 16
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinOverseer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinShaman,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 3
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_goblin_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.GoblinSkirmisher,
				Num = 14
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinAmbusher,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinWolfrider,
				Num = 11
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinOverseer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.GoblinShaman,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcWarrior,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.OrcBerserker,
				Num = 4
			}
		]
	}
];
function onCostCompare( _t1, _t2 )
{
	if (_t1.Cost < _t2.Cost)
	{
		return -1;
	}
	else if (_t1.Cost > _t2.Cost)
	{
		return 1;
	}

	return 0;
}

function calculateCosts( _p )
{
	foreach( p in _p )
	{
		p.Cost <- 0;

		foreach( t in p.Troops )
		{
			p.Cost += t.Type.Cost * t.Num;
		}

		if (!("MovementSpeedMult" in p))
		{
			p.MovementSpeedMult <- 1.0;
		}
	}

	_p.sort(this.onCostCompare);
}

this.calculateCosts(this.Const.World.Spawn.GreenskinHorde);

