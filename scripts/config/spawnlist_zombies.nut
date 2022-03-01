local gt = this.getroottable();

if (!("World" in gt.Const))
{
	gt.Const.World <- {};
}

if (!("Spawn" in gt.Const.World))
{
	gt.Const.World.Spawn <- {};
}

gt.Const.World.Spawn.Zombies <- [
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 7
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 8
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 9
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 11
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 11
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 11
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 8
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 13
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 12
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 14
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 7
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 11
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 8
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 11
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 9
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 15
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 14
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 15
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 16
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 17
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 18
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 19
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 20
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 21
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 21
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 23
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 24
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 25
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 11
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 23
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 9
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 11
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 12
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 13
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 14
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 15
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 18
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 17
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 19
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 20
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 21
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 22
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 22
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 23
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 24
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 26
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 28
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 30
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 32
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 33
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 9
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 7
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 8
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 9
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 10
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 11
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 12
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 1
			}
		]
	}
];
gt.Const.World.Spawn.Ghosts <- [
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_ghost_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_ghost_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_ghost_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_ghost_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 7
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_ghost_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 8
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_ghost_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 9
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_ghost_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 10
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_ghost_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 11
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_ghost_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 12
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_ghost_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 13
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_ghost_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 14
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_ghost_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 15
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_ghost_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 16
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_ghost_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 17
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_ghost_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 18
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_ghost_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 19
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_ghost_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 20
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_ghost_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 21
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_ghost_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 22
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 0.75,
		VisionMult = 1.0,
		Body = "figure_ghost_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 23
			}
		]
	}
];
gt.Const.World.Spawn.ZombiesAndGhouls <- [
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GhoulLOW,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.GhoulLOW,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.GhoulLOW,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.GhoulLOW,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.GhoulLOW,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GhoulLOW,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 14
			},
			{
				Type = this.Const.World.Spawn.Troops.GhoulLOW,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 11
			},
			{
				Type = this.Const.World.Spawn.Troops.GhoulLOW,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 11
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.GhoulLOW,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.GhoulLOW,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.GhoulLOW,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 15
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.GhoulLOW,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 16
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.GhoulLOW,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 18
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GhoulLOW,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 21
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.GhoulLOW,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 14
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.GhoulLOW,
				Num = 7
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.GhoulLOW,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 18
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GhoulLOW,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 19
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.GhoulLOW,
				Num = 7
			}
		]
	}
];
gt.Const.World.Spawn.ZombiesAndGhosts <- [
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 9
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 7
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 9
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 10
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 14
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 11
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 11
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 11
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 15
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 16
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 18
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 21
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 14
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 18
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 19
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 6
			}
		]
	}
];
gt.Const.World.Spawn.Necromancer <- [
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieBodyguard,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieBodyguard,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 11
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 11
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 16
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 15
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 7
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 7
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 11
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 11
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 14
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 14
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 15
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 15
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 9
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 11
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 14
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 7
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 16
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 7
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 16
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 7
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 17
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 7
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 7
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 19
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 17
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 17
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 7
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 19
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 21
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 23
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeomanBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 24
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 18
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 8
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 11
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_necromancer_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Ghost,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 18
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnight,
				Num = 8
			}
		]
	}
];
gt.Const.World.Spawn.NecromancerSouthern <- [
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomadBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomadBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 7
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomadBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 8
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomadBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 10
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 8
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomadBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 9
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomadBodyguard,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 10
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomadBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 11
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomadBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 12
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomadBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieYeoman,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomadBodyguard,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 14
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomadBodyguard,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 13
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomadBodyguard,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 15
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieKnightBodyguard,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 14
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomadBodyguard,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 16
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomadBodyguard,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 17
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomadBodyguard,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 18
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomadBodyguard,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 19
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_zombie_04",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Necromancer,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomadBodyguard,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.ZombieNomad,
				Num = 21
			}
		]
	}
];
gt.Const.World.Spawn.ZombiesLight <- [
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 7
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 8
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 9
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 10
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 11
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 12
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 13
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 14
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 15
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 16
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 17
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 18
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 19
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 20
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 21
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 22
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 23
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 24
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 25
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 26
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 27
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 28
			}
		]
	},
	{
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 0.8,
		Body = "figure_zombie_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Zombie,
				Num = 29
			}
		]
	}
];
gt.Const.World.Spawn.ZombiesOrZombiesAndGhosts <- [];
gt.Const.World.Spawn.ZombiesOrZombiesAndGhosts.extend(this.Const.World.Spawn.Zombies);
gt.Const.World.Spawn.ZombiesOrZombiesAndGhosts.extend(this.Const.World.Spawn.ZombiesAndGhosts);
gt.Const.World.Spawn.ZombiesOrZombiesAndGhouls <- [];
gt.Const.World.Spawn.ZombiesOrZombiesAndGhouls.extend(this.Const.World.Spawn.Zombies);
gt.Const.World.Spawn.ZombiesOrZombiesAndGhouls.extend(this.Const.World.Spawn.ZombiesAndGhouls);
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

this.calculateCosts(this.Const.World.Spawn.Zombies);
this.calculateCosts(this.Const.World.Spawn.ZombiesLight);
this.calculateCosts(this.Const.World.Spawn.Ghosts);
this.calculateCosts(this.Const.World.Spawn.ZombiesAndGhouls);
this.calculateCosts(this.Const.World.Spawn.ZombiesOrZombiesAndGhouls);
this.calculateCosts(this.Const.World.Spawn.ZombiesAndGhosts);
this.calculateCosts(this.Const.World.Spawn.ZombiesOrZombiesAndGhosts);
this.calculateCosts(this.Const.World.Spawn.Necromancer);
this.calculateCosts(this.Const.World.Spawn.NecromancerSouthern);

