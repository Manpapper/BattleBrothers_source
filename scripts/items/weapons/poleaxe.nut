this.poleaxe <- this.inherit("scripts/items/weapons/weapon", {
	m = {},
	function create()
	{
		this.weapon.create();
		this.m.ID = "weapon.poleaxe";
		this.m.Name = "Pollaxe";
		this.m.Description = "A versatile polearm designed for armored combat between knights. Can deliver a wide variety of injuries.";
		this.m.Categories = "Polearm, Two-Handed";
		this.m.IconLarge = "weapons/melee/poleaxe_01.png";
		this.m.Icon = "weapons/melee/poleaxe_01_70x70.png";
		this.m.SlotType = this.Const.ItemSlot.Mainhand;
		this.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
		this.m.ItemType = this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded;
		this.m.AddGenericSkill = true;
		this.m.IsAgainstShields = true;
		this.m.ShowQuiver = false;
		this.m.ShowArmamentIcon = true;
		this.m.ArmamentIcon = "icon_pollaxe_01";
		this.m.Value = 3000;
		this.m.ShieldDamage = 24;
		this.m.Condition = 72.0;
		this.m.ConditionMax = 72.0;
		this.m.StaminaModifier = -13;
		this.m.RangeMin = 1;
		this.m.RangeMax = 1;
		this.m.RangeIdeal = 1;
		this.m.RegularDamage = 50;
		this.m.RegularDamageMax = 75;
		this.m.ArmorDamageMult = 1.1;
		this.m.DirectDamageMult = 0.4;
		this.m.ChanceToHitHead = 5;
	}

	function onEquip()
	{
		this.weapon.onEquip();
		local strike = this.new("scripts/skills/actives/assault_skill");
		this.addSkill(strike);
		local skillToAdd = this.new("scripts/skills/actives/smite_skill");
		skillToAdd.m.Icon = "skills/active_241.png";
		skillToAdd.m.IconDisabled = "skills/active_241_sw.png";
		skillToAdd.m.Overlay = "active_241";
		skillToAdd.m.IsPolearm = true;
		skillToAdd.m.DirectDamageMult = 0.4;
		this.addSkill(skillToAdd);
		local skillToAdd = this.new("scripts/skills/actives/split_shield");
		skillToAdd.setFatigueCost(skillToAdd.getFatigueCostRaw() + 5);
		this.addSkill(skillToAdd);
	}

});

