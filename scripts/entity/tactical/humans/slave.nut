this.slave <- this.inherit("scripts/entity/tactical/human", {
	m = {},
	function create()
	{
		this.m.Type = this.Const.EntityType.Slave;
		this.m.BloodType = this.Const.BloodType.Red;
		this.m.XP = this.Const.Tactical.Actor.Slave.XP;
		this.human.create();

		if (this.Math.rand(1, 100) <= 90)
		{
			this.m.Bodies = this.Const.Bodies.SouthernSlave;
			this.m.Faces = this.Const.Faces.SouthernMale;
			this.m.Hairs = this.Const.Hair.SouthernMale;
			this.m.HairColors = this.Const.HairColors.Southern;
			this.m.Beards = this.Const.Beards.SouthernUntidy;
			this.m.BeardChance = 90;
			this.m.Ethnicity = 1;
		}
		else
		{
			this.m.Bodies = this.Const.Bodies.NorthernSlave;
			this.m.Faces = this.Const.Faces.AllMale;
			this.m.Hairs = this.Const.Hair.WildMale;
			this.m.HairColors = this.Const.HairColors.All;
			this.m.Beards = this.Const.Beards.Untidy;
		}

		this.m.Body = this.Math.rand(0, this.m.Bodies.len() - 1);
		this.m.AIAgent = this.new("scripts/ai/tactical/agents/military_melee_agent");
		this.m.AIAgent.setActor(this);
	}

	function onInit()
	{
		this.human.onInit();
		local b = this.m.BaseProperties;
		b.setValues(this.Const.Tactical.Actor.Slave);
		b.TargetAttractionMult = 0.5;
		this.m.ActionPoints = b.ActionPoints;
		this.m.Hitpoints = b.Hitpoints;
		this.m.CurrentProperties = clone b;
		this.setAppearance();
		this.getSprite("socket").setBrush("bust_base_southern");

		if (this.Math.rand(1, 100) <= 50)
		{
			local tattoo_head = this.actor.getSprite("tattoo_head");
			tattoo_head.setBrush("bust_head_darkeyes_01");
			tattoo_head.Visible = true;
		}
		else
		{
			local tattoo_head = this.actor.getSprite("tattoo_head");
			tattoo_head.setBrush("scar_02_head");
			tattoo_head.Visible = true;
		}

		if (this.Math.rand(1, 100) <= 75)
		{
			local dirt = this.getSprite("dirt");
			dirt.Visible = true;
		}

		if (this.Math.rand(1, 100) <= 75)
		{
			local tattoo_body = this.actor.getSprite("tattoo_body");
			local body = this.actor.getSprite("body");
			tattoo_body.setBrush("scar_02_" + body.getBrush().Name);
			tattoo_body.Visible = true;
		}

		if (this.m.Ethnicity == 0)
		{
			local body = this.getSprite("body");
			body.Color = this.createColor("#ffeaea");
			body.varyColor(0.05, 0.05, 0.05);
			local head = this.getSprite("head");
			head.Color = body.Color;
			head.Saturation = body.Saturation;
		}

		this.m.Skills.add(this.new("scripts/skills/perks/perk_backstabber"));
	}

	function assignRandomEquipment()
	{
		local r;
		r = this.Math.rand(1, 6);

		if (r == 1)
		{
			this.m.Items.equip(this.new("scripts/items/weapons/knife"));
		}
		else if (r == 2)
		{
			this.m.Items.equip(this.new("scripts/items/weapons/pitchfork"));
		}
		else if (r == 3)
		{
			this.m.Items.equip(this.new("scripts/items/weapons/wooden_stick"));
		}
		else if (r == 4)
		{
			this.m.Items.equip(this.new("scripts/items/weapons/butchers_cleaver"));
		}
		else if (r == 5)
		{
			this.m.Items.equip(this.new("scripts/items/weapons/militia_spear"));
		}
		else if (r == 6)
		{
			this.m.Items.equip(this.new("scripts/items/weapons/pickaxe"));
		}

		if (this.Math.rand(1, 100) <= 66)
		{
			r = this.Math.rand(1, 2);

			if (r == 1)
			{
				this.m.Items.equip(this.new("scripts/items/armor/sackcloth"));
			}
			else if (r == 2)
			{
				this.m.Items.equip(this.new("scripts/items/armor/tattered_sackcloth"));
			}
		}

		if (this.Math.rand(1, 100) <= 33)
		{
			this.m.Items.equip(this.new("scripts/items/helmets/oriental/southern_head_wrap"));
		}
	}

});

