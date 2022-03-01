this.standard_bearer <- this.inherit("scripts/entity/tactical/human", {
	m = {},
	function create()
	{
		this.m.Type = this.Const.EntityType.StandardBearer;
		this.m.BloodType = this.Const.BloodType.Red;
		this.m.XP = this.Const.Tactical.Actor.StandardBearer.XP;
		this.human.create();
		this.m.Faces = this.Const.Faces.AllMale;
		this.m.Hairs = this.Const.Hair.Military;
		this.m.HairColors = this.Const.HairColors.Old;
		this.m.Beards = this.Const.Beards.Tidy;
		this.m.AIAgent = this.new("scripts/ai/tactical/agents/military_standard_bearer_agent");
		this.m.AIAgent.setActor(this);
	}

	function onInit()
	{
		this.human.onInit();
		local b = this.m.BaseProperties;
		b.setValues(this.Const.Tactical.Actor.StandardBearer);
		b.TargetAttractionMult = 1.5;
		this.m.ActionPoints = b.ActionPoints;
		this.m.Hitpoints = b.Hitpoints;
		this.m.CurrentProperties = clone b;
		this.setAppearance();
		this.getSprite("socket").setBrush("bust_base_military");
		this.m.Skills.add(this.new("scripts/skills/perks/perk_captain"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_brawny"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_inspiring_presence"));
		this.m.Skills.add(this.new("scripts/skills/perks/perk_steel_brow"));
		this.m.Skills.add(this.new("scripts/skills/actives/rotation"));
		this.m.Skills.add(this.new("scripts/skills/actives/rally_the_troops"));
		this.m.Skills.add(this.new("scripts/skills/actives/recover_skill"));
	}

	function assignRandomEquipment()
	{
		local r;
		local banner = 4;

		if (("State" in this.Tactical) && this.Tactical.State != null && !this.Tactical.State.isScenarioMode())
		{
			banner = this.World.FactionManager.getFaction(this.getFaction()).getBanner();
		}
		else
		{
			banner = this.getFaction();
		}

		this.m.Surcoat = banner;
		this.getSprite("surcoat").setBrush("surcoat_" + (banner < 10 ? "0" + banner : banner));
		local weapon = this.new("scripts/items/tools/faction_banner");
		weapon.setVariant(banner);
		this.m.Items.equip(weapon);
		r = this.Math.rand(1, 4);

		if (r == 1)
		{
			local armor = this.new("scripts/items/armor/mail_hauberk");
			armor.setVariant(28);
			this.m.Items.equip(armor);
		}
		else if (r == 2)
		{
			this.m.Items.equip(this.new("scripts/items/armor/mail_shirt"));
		}
		else
		{
			this.m.Items.equip(this.new("scripts/items/armor/basic_mail_shirt"));
		}

		if (this.Math.rand(1, 100) <= 90)
		{
			local helmet;

			if (banner <= 4)
			{
				r = this.Math.rand(1, 3);

				if (r == 1)
				{
					helmet = this.new("scripts/items/helmets/kettle_hat");
				}
				else if (r == 2)
				{
					helmet = this.new("scripts/items/helmets/padded_kettle_hat");
				}
				else
				{
					helmet = this.new("scripts/items/helmets/kettle_hat_with_mail");
				}
			}
			else if (banner <= 7)
			{
				r = this.Math.rand(1, 3);

				if (r == 1)
				{
					helmet = this.new("scripts/items/helmets/flat_top_helmet");
				}
				else if (r == 2)
				{
					helmet = this.new("scripts/items/helmets/padded_flat_top_helmet");
				}
				else
				{
					helmet = this.new("scripts/items/helmets/flat_top_with_mail");
				}
			}
			else
			{
				r = this.Math.rand(1, 3);

				if (r == 1)
				{
					helmet = this.new("scripts/items/helmets/nasal_helmet");
				}
				else if (r == 2)
				{
					helmet = this.new("scripts/items/helmets/padded_nasal_helmet");
				}
				else
				{
					helmet = this.new("scripts/items/helmets/nasal_helmet_with_mail");
				}
			}

			helmet.setPlainVariant();
			this.m.Items.equip(helmet);
		}
	}

});

