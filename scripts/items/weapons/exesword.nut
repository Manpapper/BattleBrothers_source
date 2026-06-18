this.exesword <- this.inherit("scripts/items/weapons/weapon", {
	m = {},
	function create()
	{
		this.weapon.create();
		this.m.ID = "weapon.exesword";
		this.m.Name = "Executioner\'s Sword";
		this.m.Description = "A long and hefty blade with a rounded tip. Though not meant for battle, a well-placed cut ensures a swift and sudden end all the same.";
		this.m.Categories = "Sword, Two-Handed";
		this.m.IconLarge = "weapons/melee/sword_exe_01.png";
		this.m.Icon = "weapons/melee/sword_exe_01_70x70.png";
		this.m.SlotType = this.Const.ItemSlot.Mainhand;
		this.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
		this.m.ItemType = this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded;
		this.m.IsAgainstShields = true;
		this.m.IsAoE = true;
		this.m.AddGenericSkill = true;
		this.m.ShowQuiver = false;
		this.m.ShowArmamentIcon = true;
		this.m.ArmamentIcon = "icon_sword_exe_01";
		this.m.Value = 2900;
		this.m.ShieldDamage = 16;
		this.m.Condition = 72.0;
		this.m.ConditionMax = 72.0;
		this.m.StaminaModifier = -12;
		this.m.RegularDamage = 95;
		this.m.RegularDamageMax = 110;
		this.m.ArmorDamageMult = 0.9;
		this.m.DirectDamageMult = 0.35;
		this.m.ChanceToHitHead = 5;
	}

	function onEquip()
	{
		this.weapon.onEquip();
		this.addSkill(this.new("scripts/skills/actives/execute_skill"));
		this.addSkill(this.new("scripts/skills/actives/exesword_decapitate"));
		local splitShield = this.new("scripts/skills/actives/split_shield");
		splitShield.setFatigueCost(splitShield.getFatigueCostRaw() + 5);
		this.addSkill(splitShield);
	}

});

