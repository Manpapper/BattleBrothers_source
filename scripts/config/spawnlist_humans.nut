local gt = this.getroottable();

if (!("World" in gt.Const))
{
	gt.Const.World <- {};
}

if (!("Spawn" in gt.Const.World))
{
	gt.Const.World.Spawn <- {};
}

gt.Const.World.Spawn.Cultists <- [
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_civilian_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.CultistAmbush,
				Num = 7
			}
		]
	}
];
gt.Const.World.Spawn.Peasants <- [
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Peasant,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Peasant,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Peasant,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Peasant,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Peasant,
				Num = 7
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Peasant,
				Num = 8
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Peasant,
				Num = 9
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Peasant,
				Num = 10
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Peasant,
				Num = 11
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Peasant,
				Num = 12
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Peasant,
				Num = 13
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Peasant,
				Num = 14
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Peasant,
				Num = 15
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Peasant,
				Num = 16
			}
		]
	}
];
gt.Const.World.Spawn.PeasantsArmed <- [
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.PeasantArmed,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.PeasantArmed,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.PeasantArmed,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.PeasantArmed,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.PeasantArmed,
				Num = 7
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.PeasantArmed,
				Num = 8
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.PeasantArmed,
				Num = 9
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.PeasantArmed,
				Num = 10
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.PeasantArmed,
				Num = 11
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.PeasantArmed,
				Num = 12
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.PeasantArmed,
				Num = 13
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.PeasantArmed,
				Num = 14
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.PeasantArmed,
				Num = 15
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.PeasantArmed,
				Num = 16
			}
		]
	}
];
gt.Const.World.Spawn.PeasantsSouthern <- [
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_06",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.SouthernPeasant,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_06",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.SouthernPeasant,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_06",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.SouthernPeasant,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_06",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.SouthernPeasant,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_06",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.SouthernPeasant,
				Num = 7
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_06",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.SouthernPeasant,
				Num = 8
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_06",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.SouthernPeasant,
				Num = 9
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_06",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.SouthernPeasant,
				Num = 10
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_06",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.SouthernPeasant,
				Num = 11
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_06",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.SouthernPeasant,
				Num = 12
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_06",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.SouthernPeasant,
				Num = 13
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_06",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.SouthernPeasant,
				Num = 14
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_06",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.SouthernPeasant,
				Num = 15
			}
		]
	},
	{
		MovementSpeedMult = 0.75,
		VisibilityMult = 1.0,
		VisionMult = 0.75,
		Body = "figure_civilian_06",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.SouthernPeasant,
				Num = 16
			}
		]
	}
];
gt.Const.World.Spawn.BountyHunters <- [
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.BountyHunter,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.BountyHunterRanged,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Wardog,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.BountyHunter,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Wardog,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.BountyHunter,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.BountyHunterRanged,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Wardog,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.BountyHunter,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.BountyHunterRanged,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Wardog,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.BountyHunter,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.BountyHunterRanged,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.BountyHunter,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.BountyHunterRanged,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.BountyHunter,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.BountyHunterRanged,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Wardog,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.BountyHunter,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.BountyHunterRanged,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Wardog,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.BountyHunter,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.BountyHunterRanged,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.BountyHunter,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.BountyHunterRanged,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Wardog,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.BountyHunter,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.BountyHunterRanged,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.BountyHunter,
				Num = 11
			},
			{
				Type = this.Const.World.Spawn.Troops.BountyHunterRanged,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.BountyHunter,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.BountyHunterRanged,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.BountyHunter,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.BountyHunterRanged,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.BountyHunter,
				Num = 14
			},
			{
				Type = this.Const.World.Spawn.Troops.BountyHunterRanged,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.BountyHunter,
				Num = 15
			},
			{
				Type = this.Const.World.Spawn.Troops.BountyHunterRanged,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Wardog,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.BountyHunter,
				Num = 16
			},
			{
				Type = this.Const.World.Spawn.Troops.BountyHunterRanged,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.BountyHunter,
				Num = 17
			},
			{
				Type = this.Const.World.Spawn.Troops.BountyHunterRanged,
				Num = 5
			}
		]
	}
];
gt.Const.World.Spawn.Mercenaries <- [
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.MercenaryLOW,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.MercenaryLOW,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Wardog,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.MercenaryLOW,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Wardog,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.MercenaryLOW,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.MercenaryLOW,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.MercenaryLOW,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.MercenaryLOW,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.MercenaryLOW,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.HedgeKnight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.Wardog,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.Wardog,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.MasterArcher,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.MercenaryLOW,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.HedgeKnight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.HedgeKnight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.MasterArcher,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.HedgeKnight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Wardog,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Swordmaster,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.MercenaryLOW,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Swordmaster,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.MercenaryLOW,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.Swordmaster,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.HedgeKnight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.HedgeKnight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.HedgeKnight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.MasterArcher,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.HedgeKnight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Swordmaster,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 11
			},
			{
				Type = this.Const.World.Spawn.Troops.HedgeKnight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Swordmaster,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 11
			},
			{
				Type = this.Const.World.Spawn.Troops.HedgeKnight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Swordmaster,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.MasterArcher,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.HedgeKnight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Swordmaster,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.MercenaryLOW,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.HedgeKnight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Swordmaster,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.MercenaryLOW,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.HedgeKnight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Swordmaster,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.MasterArcher,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.MercenaryLOW,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.HedgeKnight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Swordmaster,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 14
			},
			{
				Type = this.Const.World.Spawn.Troops.HedgeKnight,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Swordmaster,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 6
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_bandit_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Mercenary,
				Num = 14
			},
			{
				Type = this.Const.World.Spawn.Troops.HedgeKnight,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Swordmaster,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.MasterArcher,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.MercenaryRanged,
				Num = 4
			}
		]
	}
];
gt.Const.World.Spawn.Militia <- [
	{
		Cost = 0,
		MovementSpeedMult = 0.9,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeed = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaVeteran,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeed = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaVeteran,
				Num = 3
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.9,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.9,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaVeteran,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.9,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaVeteran,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.9,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaVeteran,
				Num = 3
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.9,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 3
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaVeteran,
				Num = 3
			}
		]
	},
	{
		Cost = 0,
		MovementSpeed = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaVeteran,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaCaptain,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeed = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaVeteran,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaCaptain,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeed = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaVeteran,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaCaptain,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaVeteran,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaCaptain,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeed = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaVeteran,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaCaptain,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeed = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaVeteran,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaCaptain,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeed = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaVeteran,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaCaptain,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeed = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaVeteran,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaCaptain,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeed = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaVeteran,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaCaptain,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeed = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaVeteran,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaCaptain,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeed = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 15
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaVeteran,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaCaptain,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeed = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 15
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaVeteran,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaCaptain,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeed = 0.8,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_militia_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Militia,
				Num = 17
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaRanged,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaVeteran,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.MilitiaCaptain,
				Num = 1
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

this.calculateCosts(this.Const.World.Spawn.Cultists);
this.calculateCosts(this.Const.World.Spawn.Peasants);
this.calculateCosts(this.Const.World.Spawn.PeasantsArmed);
this.calculateCosts(this.Const.World.Spawn.PeasantsSouthern);
this.calculateCosts(this.Const.World.Spawn.BountyHunters);
this.calculateCosts(this.Const.World.Spawn.Mercenaries);
this.calculateCosts(this.Const.World.Spawn.Militia);

