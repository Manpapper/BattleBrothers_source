local gt = this.getroottable();

if (!("Tactical" in gt.Const))
{
	gt.Const.Tactical <- {};
}

if (!("Actor" in gt.Const.Tactical))
{
	gt.Const.Tactical.Actor <- {};
}

gt.Const.Tactical.Actor.SkeletonLight <- {
	XP = 150,
	ActionPoints = 9,
	Hitpoints = 45,
	Bravery = 80,
	Stamina = 100,
	MeleeSkill = 55,
	RangedSkill = 0,
	MeleeDefense = 0,
	RangedDefense = 0,
	Initiative = 65,
	FatigueEffectMult = 0.0,
	MoraleEffectMult = 0.0,
	Armor = [
		0,
		0
	]
};
gt.Const.Tactical.Actor.SkeletonMedium <- {
	XP = 250,
	ActionPoints = 9,
	Hitpoints = 55,
	Bravery = 100,
	Stamina = 100,
	MeleeSkill = 65,
	RangedSkill = 0,
	MeleeDefense = 0,
	RangedDefense = 0,
	Initiative = 65,
	FatigueEffectMult = 0.0,
	MoraleEffectMult = 0.0,
	Armor = [
		0,
		0
	]
};
gt.Const.Tactical.Actor.SkeletonHeavy <- {
	XP = 350,
	ActionPoints = 9,
	Hitpoints = 65,
	Bravery = 130,
	Stamina = 100,
	MeleeSkill = 75,
	RangedSkill = 0,
	MeleeDefense = 5,
	RangedDefense = 5,
	Initiative = 70,
	FatigueEffectMult = 0.0,
	MoraleEffectMult = 0.0,
	Armor = [
		0,
		0
	]
};
gt.Const.Tactical.Actor.SkeletonPriest <- {
	XP = 450,
	ActionPoints = 9,
	Hitpoints = 65,
	Bravery = 130,
	Stamina = 100,
	MeleeSkill = 40,
	RangedSkill = 0,
	MeleeDefense = 0,
	RangedDefense = 5,
	Initiative = 5,
	FatigueEffectMult = 0.0,
	MoraleEffectMult = 0.0,
	Armor = [
		0,
		0
	]
};
gt.Const.Tactical.Actor.SkeletonLich <- {
	XP = 750,
	ActionPoints = 12,
	Hitpoints = 240,
	Bravery = 130,
	Stamina = 100,
	MeleeSkill = 0,
	RangedSkill = 0,
	MeleeDefense = 15,
	RangedDefense = 15,
	Initiative = 50,
	FatigueEffectMult = 0.0,
	MoraleEffectMult = 0.0,
	Armor = [
		0,
		0
	]
};
gt.Const.Tactical.Actor.SkeletonLichMirrorImage <- {
	XP = 1,
	ActionPoints = 5,
	Hitpoints = 1,
	Bravery = 100,
	Stamina = 100,
	MeleeSkill = 75,
	RangedSkill = 0,
	MeleeDefense = 20,
	RangedDefense = 20,
	Initiative = 70,
	FatigueEffectMult = 0.0,
	MoraleEffectMult = 0.0,
	Armor = [
		0,
		0
	]
};
gt.Const.Tactical.Actor.FlyingSkull <- {
	XP = 1,
	ActionPoints = 6,
	Hitpoints = 25,
	Bravery = 100,
	Stamina = 100,
	MeleeSkill = 0,
	RangedSkill = 0,
	MeleeDefense = 10,
	RangedDefense = 10,
	Initiative = 80,
	FatigueEffectMult = 0.0,
	MoraleEffectMult = 0.0,
	Armor = [
		0,
		0
	]
};
gt.Const.Tactical.Actor.SkeletonPhylactery <- {
	XP = 0,
	ActionPoints = 0,
	Hitpoints = 25,
	Bravery = 0,
	Stamina = 0,
	MeleeSkill = 0,
	RangedSkill = 0,
	MeleeDefense = -50,
	RangedDefense = 0,
	Initiative = 0,
	FatigueEffectMult = 1.0,
	MoraleEffectMult = 1.0,
	FatigueRecoveryRate = 0,
	Armor = [
		0,
		0
	]
};
gt.Const.Tactical.Actor.SkeletonBoss <- {
	XP = 600,
	ActionPoints = 9,
	Hitpoints = 350,
	Bravery = 140,
	Stamina = 100,
	MeleeSkill = 90,
	RangedSkill = 0,
	MeleeDefense = 20,
	RangedDefense = 10,
	Initiative = 70,
	FatigueEffectMult = 0.0,
	MoraleEffectMult = 0.0,
	Armor = [
		0,
		0
	],
	DamageTotalMult = 1.35
};
gt.Const.Tactical.Actor.Zombie <- {
	XP = 100,
	ActionPoints = 6,
	Hitpoints = 100,
	Bravery = 100,
	Stamina = 100,
	MeleeSkill = 45,
	RangedSkill = 5,
	MeleeDefense = -5,
	RangedDefense = -5,
	Initiative = 45,
	FatigueEffectMult = 0.0,
	MoraleEffectMult = 0.0,
	Armor = [
		0,
		0
	]
};
gt.Const.Tactical.Actor.ZombieYeoman <- {
	XP = 150,
	ActionPoints = 6,
	Hitpoints = 130,
	Bravery = 100,
	Stamina = 100,
	MeleeSkill = 50,
	RangedSkill = 0,
	MeleeDefense = -5,
	RangedDefense = -5,
	Initiative = 45,
	FatigueEffectMult = 0.0,
	MoraleEffectMult = 0.0,
	Armor = [
		0,
		0
	]
};
gt.Const.Tactical.Actor.ZombieKnight <- {
	XP = 250,
	ActionPoints = 7,
	Hitpoints = 180,
	Bravery = 130,
	Stamina = 100,
	MeleeSkill = 60,
	RangedSkill = 0,
	MeleeDefense = 5,
	RangedDefense = 0,
	Initiative = 60,
	FatigueEffectMult = 0.0,
	MoraleEffectMult = 0.0,
	Armor = [
		0,
		0
	]
};
gt.Const.Tactical.Actor.ZombieBetrayer <- {
	XP = 350,
	ActionPoints = 8,
	Hitpoints = 200,
	Bravery = 110,
	Stamina = 100,
	MeleeSkill = 80,
	RangedSkill = 0,
	MeleeDefense = 5,
	RangedDefense = 0,
	Initiative = 70,
	FatigueEffectMult = 0.0,
	MoraleEffectMult = 0.0,
	Armor = [
		0,
		0
	]
};
gt.Const.Tactical.Actor.ZombieTreasureHunter <- {
	XP = 250,
	ActionPoints = 8,
	Hitpoints = 180,
	Bravery = 90,
	Stamina = 100,
	MeleeSkill = 80,
	RangedSkill = 0,
	MeleeDefense = 5,
	RangedDefense = 0,
	Initiative = 70,
	FatigueEffectMult = 0.0,
	MoraleEffectMult = 0.0,
	Armor = [
		0,
		0
	]
};
gt.Const.Tactical.Actor.ZombiePlayer <- {
	XP = 150,
	ActionPoints = 6,
	Hitpoints = 130,
	Bravery = 100,
	Stamina = 100,
	MeleeSkill = 50,
	RangedSkill = 0,
	MeleeDefense = 5,
	RangedDefense = 5,
	Initiative = 50,
	FatigueEffectMult = 0.0,
	MoraleEffectMult = 0.0,
	Armor = [
		0,
		0
	]
};
gt.Const.Tactical.Actor.Vampire <- {
	XP = 400,
	ActionPoints = 8,
	Hitpoints = 225,
	Bravery = 50,
	Stamina = 100,
	MeleeSkill = 85,
	RangedSkill = 0,
	MeleeDefense = 25,
	RangedDefense = 25,
	Initiative = 130,
	FatigueEffectMult = 0.0,
	MoraleEffectMult = 0.0,
	Armor = [
		20,
		0
	]
};
gt.Const.Tactical.Actor.Ghost <- {
	XP = 225,
	ActionPoints = 9,
	Hitpoints = 1,
	Bravery = 130,
	Stamina = 100,
	MeleeSkill = 65,
	RangedSkill = 0,
	MeleeDefense = 30,
	RangedDefense = 999,
	Initiative = 95,
	FatigueEffectMult = 0.0,
	MoraleEffectMult = 0.0,
	Armor = [
		0,
		0
	]
};
gt.Const.Tactical.Actor.ZombieBoss <- {
	XP = 500,
	ActionPoints = 7,
	Hitpoints = 500,
	Bravery = 110,
	Stamina = 100,
	MeleeSkill = 95,
	RangedSkill = 0,
	MeleeDefense = 25,
	RangedDefense = 0,
	Initiative = 75,
	FatigueEffectMult = 0.0,
	MoraleEffectMult = 0.0,
	Armor = [
		400,
		250
	]
};
gt.Const.Tactical.Actor.GhostKnight <- {
	XP = 500,
	ActionPoints = 9,
	Hitpoints = 275,
	Bravery = 130,
	Stamina = 100,
	MeleeSkill = 90,
	RangedSkill = 0,
	MeleeDefense = 50,
	RangedDefense = 999,
	Initiative = 105,
	FatigueEffectMult = 0.0,
	MoraleEffectMult = 0.0,
	Armor = [
		0,
		0
	]
};
gt.Const.Tactical.Actor.Necromancer <- {
	XP = 400,
	ActionPoints = 7,
	Hitpoints = 50,
	Bravery = 90,
	Stamina = 90,
	MeleeSkill = 50,
	RangedSkill = 0,
	MeleeDefense = 5,
	RangedDefense = 10,
	Initiative = 90,
	FatigueEffectMult = 1.0,
	MoraleEffectMult = 1.0,
	Armor = [
		20,
		0
	]
};
gt.Const.Tactical.Actor.LesserFleshGolem <- {
	XP = 150,
	ActionPoints = 12,
	Hitpoints = 200,
	Bravery = 100,
	Stamina = 100,
	MeleeSkill = 55,
	RangedSkill = 0,
	MeleeDefense = 0,
	RangedDefense = 0,
	Initiative = 50,
	FatigueEffectMult = 0.0,
	MoraleEffectMult = 0.0,
	Armor = [
		0,
		0
	]
};
gt.Const.Tactical.Actor.GreaterFleshGolem <- {
	XP = 400,
	ActionPoints = 12,
	Hitpoints = 700,
	Bravery = 100,
	Stamina = 100,
	MeleeSkill = 70,
	RangedSkill = 70,
	MeleeDefense = 10,
	RangedDefense = 10,
	Initiative = 35,
	FatigueEffectMult = 0.0,
	MoraleEffectMult = 0.0,
	Armor = [
		0,
		0
	]
};
gt.Const.Tactical.Actor.FaultFinder <- {
	XP = 250,
	ActionPoints = 9,
	Hitpoints = 65,
	Bravery = 75,
	Stamina = 100,
	MeleeSkill = 65,
	RangedSkill = 65,
	MeleeDefense = 0,
	RangedDefense = 15,
	Initiative = 115,
	FatigueEffectMult = 1.0,
	MoraleEffectMult = 1.0,
	Armor = [
		0,
		0
	]
};
gt.Const.Tactical.Actor.GrandDiviner <- {
	XP = 500,
	ActionPoints = 9,
	Hitpoints = 115,
	Bravery = 130,
	Stamina = 110,
	MeleeSkill = 80,
	RangedSkill = 0,
	MeleeDefense = 15,
	RangedDefense = 20,
	Initiative = 105,
	FatigueEffectMult = 1.0,
	MoraleEffectMult = 1.0,
	Armor = [
		0,
		0
	]
};
gt.Const.Tactical.Actor.FleshCradle <- {
	XP = 0,
	ActionPoints = 0,
	Hitpoints = 9999,
	Bravery = 999,
	Stamina = 999,
	MeleeSkill = 1,
	RangedSkill = 1,
	MeleeDefense = -50,
	RangedDefense = -50,
	Initiative = 50,
	FatigueEffectMult = 1.0,
	MoraleEffectMult = 1.0,
	Armor = [
		9999,
		9999
	],
	FatigueRecoveryRate = 0
};

