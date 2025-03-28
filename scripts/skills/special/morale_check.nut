this.morale_check <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "special.morale.check";
		this.m.Name = "Morale Check";
		this.m.Icon = "skills/status_effect_02.png";
		this.m.IconMini = "status_effect_02_mini";
		this.m.Type = this.Const.SkillType.Special | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Last;
		this.m.IsActive = false;
		this.m.IsHidden = true;
		this.m.IsSerialized = false;
	}

	function getTooltip()
	{
		switch(this.m.Container.getActor().getMoraleState())
		{
		case this.Const.MoraleState.Confident:
			local ret = [
				{
					id = 1,
					type = "title",
					text = this.getName()
				},
				{
					id = 2,
					type = "description",
					text = "We\'ll be victorious! This character is confident that victory will be his."
				},
				{
					id = 11,
					type = "text",
					icon = "ui/icons/melee_skill.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] Melee Skill"
				},
				{
					id = 13,
					type = "text",
					icon = "ui/icons/ranged_skill.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] Ranged Skill"
				},
				{
					id = 12,
					type = "text",
					icon = "ui/icons/melee_defense.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] Melee Defense"
				},
				{
					id = 14,
					type = "text",
					icon = "ui/icons/ranged_defense.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] Ranged Defense"
				}
			];
			return ret;

		case this.Const.MoraleState.Wavering:
			local ret = [
				{
					id = 1,
					type = "title",
					text = this.getName()
				},
				{
					id = 2,
					type = "description",
					text = "Uh oh. This character is wavering and unsure if the battle will turn out to his advantage."
				},
				{
					id = 11,
					type = "text",
					icon = "ui/icons/bravery.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-10%[/color] Resolve"
				},
				{
					id = 12,
					type = "text",
					icon = "ui/icons/melee_skill.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-10%[/color] Melee Skill"
				},
				{
					id = 13,
					type = "text",
					icon = "ui/icons/ranged_skill.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-10%[/color] Ranged Skill"
				},
				{
					id = 14,
					type = "text",
					icon = "ui/icons/melee_defense.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-10%[/color] Melee Defense"
				},
				{
					id = 15,
					type = "text",
					icon = "ui/icons/ranged_defense.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-10%[/color] Ranged Defense"
				}
			];
			return ret;

		case this.Const.MoraleState.Breaking:
			local ret = [
				{
					id = 1,
					type = "title",
					text = this.getName()
				},
				{
					id = 2,
					type = "description",
					text = "We can\'t win this! This character\'s morale is breaking and he is close to fleeing the battlefield."
				},
				{
					id = 11,
					type = "text",
					icon = "ui/icons/bravery.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-20%[/color] Resolve"
				},
				{
					id = 11,
					type = "text",
					icon = "ui/icons/melee_skill.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-20%[/color] Melee Skill"
				},
				{
					id = 13,
					type = "text",
					icon = "ui/icons/ranged_skill.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-20%[/color] Ranged Skill"
				},
				{
					id = 14,
					type = "text",
					icon = "ui/icons/melee_defense.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-20%[/color] Melee Defense"
				},
				{
					id = 15,
					type = "text",
					icon = "ui/icons/ranged_defense.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-20%[/color] Ranged Defense"
				}
			];
			return ret;

		case this.Const.MoraleState.Fleeing:
			local ret = [
				{
					id = 1,
					type = "title",
					text = this.getName()
				},
				{
					id = 2,
					type = "description",
					text = "Run for your lives! This character has lost it and is fleeing the battlefield in panic."
				},
				{
					id = 11,
					type = "text",
					icon = "ui/icons/bravery.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-30%[/color] Resolve"
				},
				{
					id = 11,
					type = "text",
					icon = "ui/icons/melee_skill.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-30%[/color] Melee Skill"
				},
				{
					id = 13,
					type = "text",
					icon = "ui/icons/ranged_skill.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-30%[/color] Ranged Skill"
				},
				{
					id = 14,
					type = "text",
					icon = "ui/icons/melee_defense.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-30%[/color] Melee Defense"
				},
				{
					id = 15,
					type = "text",
					icon = "ui/icons/ranged_defense.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-30%[/color] Ranged Defense"
				},
				{
					id = 16,
					type = "text",
					icon = "ui/icons/special.png",
					text = "Acts at the end of the round"
				}
			];
			return ret;
		}
	}

	function onUpdate( _properties )
	{
		this.m.IsHidden = this.m.Container.getActor().getMoraleState() == this.Const.MoraleState.Steady;
		this.m.Name = this.Const.MoraleStateName[this.m.Container.getActor().getMoraleState()];

		switch(this.m.Container.getActor().getMoraleState())
		{
		case this.Const.MoraleState.Confident:
			this.m.Icon = "skills/status_effect_14.png";
			this.m.IconMini = "status_effect_14_mini";
			_properties.MeleeSkillMult *= 1.1;
			_properties.RangedSkillMult *= 1.1;
			_properties.MeleeDefenseMult *= 1.1;
			_properties.RangedDefenseMult *= 1.1;
			break;

		case this.Const.MoraleState.Wavering:
			this.m.Icon = "skills/status_effect_02_c.png";
			this.m.IconMini = "status_effect_02_c_mini";
			_properties.BraveryMult *= 0.9;
			_properties.MeleeSkillMult *= 0.9;
			_properties.RangedSkillMult *= 0.9;
			_properties.MeleeDefenseMult *= 0.9;
			_properties.RangedDefenseMult *= 0.9;
			break;

		case this.Const.MoraleState.Breaking:
			this.m.Icon = "skills/status_effect_02_b.png";
			this.m.IconMini = "status_effect_02_b_mini";
			_properties.BraveryMult *= 0.8;
			_properties.MeleeSkillMult *= 0.8;
			_properties.RangedSkillMult *= 0.8;
			_properties.MeleeDefenseMult *= 0.8;
			_properties.RangedDefenseMult *= 0.8;
			break;

		case this.Const.MoraleState.Fleeing:
			this.m.Icon = "skills/status_effect_02_a.png";
			this.m.IconMini = "status_effect_02_a_mini";
			_properties.BraveryMult *= 0.7;
			_properties.MeleeSkillMult *= 0.7;
			_properties.RangedSkillMult *= 0.7;
			_properties.MeleeDefenseMult *= 0.7;
			_properties.RangedDefenseMult *= 0.7;
			_properties.InitiativeForTurnOrderAdditional -= 1000;
			break;
		}
	}

});

