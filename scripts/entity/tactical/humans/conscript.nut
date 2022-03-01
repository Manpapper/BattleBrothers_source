this.conscript <- this.inherit("scripts/entity/tactical/human", {
	m = {},
	function create()
	{
		this.m.Type = this.Const.EntityType.Conscript;
		this.m.BloodType = this.Const.BloodType.Red;
		this.m.XP = this.Const.Tactical.Actor.Conscript.XP;
		this.human.create();
		this.m.Bodies = this.Const.Bodies.SouthernMale;
		this.m.Faces = this.Const.Faces.SouthernMale;
		this.m.Hairs = this.Const.Hair.SouthernMale;
		this.m.HairColors = this.Const.HairColors.Southern;
		this.m.Beards = this.Const.Beards.Southern;
		this.m.BeardChance = 90;
		this.m.Ethnicity = 1;
		this.m.AIAgent = this.new("scripts/ai/tactical/agents/military_melee_agent");
		this.m.AIAgent.setActor(this);
	}

	function onInit()
	{
		this.human.onInit();
		local b = this.m.BaseProperties;
		b.setValues(this.Const.Tactical.Actor.Conscript);
		b.IsSpecializedInSwords = true;
		b.IsSpecializedInAxes = true;
		b.IsSpecializedInMaces = true;
		b.IsSpecializedInFlails = true;
		b.IsSpecializedInPolearms = true;
		b.IsSpecializedInThrowing = true;
		b.IsSpecializedInHammers = true;
		b.IsSpecializedInSpears = true;
		b.IsSpecializedInCleavers = true;
		this.m.ActionPoints = b.ActionPoints;
		this.m.Hitpoints = b.Hitpoints;
		this.m.CurrentProperties = clone b;
		this.setAppearance();
		this.getSprite("socket").setBrush("bust_base_southern");
		this.m.Skills.add(this.new("scripts/skills/perks/perk_quick_hands"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_brawny"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_nimble"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_fast_adaption"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_backstabber"));
		this.m.Skills.add(this.new("scripts/skills/actives/rotation"));
		this.m.Skills.add(this.new("scripts/skills/actives/recover_skill"));
	}

	function onOtherActorDeath( _killer, _victim, _skill )
	{
		if (_victim.getType() == this.Const.EntityType.Slave && _victim.isAlliedWith(this))
		{
			return;
		}

		this.actor.onOtherActorDeath(_killer, _victim, _skill);
	}

	function onOtherActorFleeing( _actor )
	{
		if (_actor.getType() == this.Const.EntityType.Slave && _actor.isAlliedWith(this))
		{
			return;
		}

		this.actor.onOtherActorFleeing(_actor);
	}

	function assignRandomEquipment()
	{
		local r;
		local banner;

		if (!this.Tactical.State.isScenarioMode())
		{
			banner = this.World.FactionManager.getFaction(this.getFaction()).getBanner();
		}
		else
		{
			banner = 13;
		}

		r = this.Math.rand(1, 5);

		if (r == 1)
		{
			this.m.Items.equip(this.new("scripts/items/weapons/oriental/light_southern_mace"));
		}
		else if (r == 2)
		{
			this.m.Items.equip(this.new("scripts/items/weapons/oriental/saif"));
		}
		else if (r == 3)
		{
			this.m.Items.equip(this.new("scripts/items/weapons/scimitar"));
		}
		else
		{
			this.m.Items.equip(this.new("scripts/items/weapons/oriental/firelance"));
		}

		if (this.Math.rand(1, 100) <= 90)
		{
			this.m.Items.equip(this.new("scripts/items/shields/oriental/southern_light_shield"));
		}

		r = this.Math.rand(1, 3);

		if (r <= 2)
		{
			local armor = this.new("scripts/items/armor/oriental/linothorax");

			if (banner == 12)
			{
				armor.setVariant(9);
			}
			else if (banner == 13)
			{
				armor.setVariant(10);
			}
			else if (banner == 14)
			{
				armor.setVariant(8);
			}

			this.m.Items.equip(armor);
		}
		else if (r == 3)
		{
			this.m.Items.equip(this.new("scripts/items/armor/oriental/southern_mail_shirt"));
		}

		r = this.Math.rand(1, 3);

		if (r == 1)
		{
			local helmet = this.new("scripts/items/helmets/oriental/southern_head_wrap");

			if (banner == 12)
			{
				helmet.setVariant(12);
			}
			else if (banner == 13)
			{
				helmet.setVariant(8);
			}
			else if (banner == 14)
			{
				helmet.setVariant(7);
			}

			this.m.Items.equip(helmet);
		}
		else if (r == 2)
		{
			this.m.Items.equip(this.new("scripts/items/helmets/oriental/wrapped_southern_helmet"));
		}
		else if (r == 3)
		{
			this.m.Items.equip(this.new("scripts/items/helmets/oriental/spiked_skull_cap_with_mail"));
		}
	}

});

