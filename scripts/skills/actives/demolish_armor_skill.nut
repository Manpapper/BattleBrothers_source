this.demolish_armor_skill <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "actives.demolish_armor";
		this.m.Name = "Demolish Armor";
		this.m.Description = "Using the weapon to batter, deform, rip and otherwise render the target\'s armor unusable with great effect. Although the impact will be felt through the thickest of armor, it won\'t inflict the most injury to the wearer.";
		this.m.Icon = "skills/active_137.png";
		this.m.IconDisabled = "skills/active_137_sw.png";
		this.m.Overlay = "active_137";
		this.m.SoundOnUse = [
			"sounds/combat/crush_armor_01.wav",
			"sounds/combat/crush_armor_02.wav",
			"sounds/combat/crush_armor_03.wav"
		];
		this.m.SoundOnHit = [
			"sounds/combat/crush_armor_hit_01.wav",
			"sounds/combat/crush_armor_hit_02.wav",
			"sounds/combat/crush_armor_hit_03.wav"
		];
		this.m.SoundVolume = 1.1;
		this.m.Type = this.Const.SkillType.Active;
		this.m.Order = this.Const.SkillOrder.OffensiveTargeted;
		this.m.IsSerialized = false;
		this.m.IsActive = true;
		this.m.IsTargeted = true;
		this.m.IsStacking = false;
		this.m.IsAttack = true;
		this.m.IsIgnoredAsAOO = true;
		this.m.IsTooCloseShown = true;
		this.m.IsWeaponSkill = true;
		this.m.DirectDamageMult = 0.0;
		this.m.HitChanceBonus = 0;
		this.m.ActionPointCost = 6;
		this.m.FatigueCost = 35;
		this.m.MinRange = 1;
		this.m.MaxRange = 2;
		this.m.ChanceDecapitate = 0;
		this.m.ChanceDisembowel = 0;
		this.m.ChanceSmash = 0;
	}

	function getTooltip()
	{
		local p = this.getContainer().buildPropertiesForUse(this, null);
		local f = p.IsSpecializedInHammers ? 1.93 : 1.45;
		local damage_armor_min = this.Math.floor(p.DamageRegularMin * p.DamageArmorMult * f * p.DamageTotalMult * p.MeleeDamageMult);
		local damage_armor_max = this.Math.floor(p.DamageRegularMax * p.DamageArmorMult * f * p.DamageTotalMult * p.MeleeDamageMult);
		local ret = this.getDefaultUtilityTooltip();

		if (damage_armor_max > 0)
		{
			ret.push({
				id = 5,
				type = "text",
				icon = "ui/icons/armor_damage.png",
				text = "Inflicts [color=" + this.Const.UI.Color.DamageValue + "]" + damage_armor_min + "[/color] - [color=" + this.Const.UI.Color.DamageValue + "]" + damage_armor_max + "[/color] damage to armor"
			});
		}

		ret.push({
			id = 7,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Inflicts [color=" + this.Const.UI.Color.DamageValue + "]" + 10 + "[/color] damage to hitpoints that ignores armor"
		});
		ret.push({
			id = 7,
			type = "text",
			icon = "ui/icons/vision.png",
			text = "Has a range of [color=" + this.Const.UI.Color.PositiveValue + "]2[/color] tiles"
		});

		if (!this.getContainer().getActor().getCurrentProperties().IsSpecializedInHammers)
		{
			ret.push({
				id = 6,
				type = "text",
				icon = "ui/icons/hitchance.png",
				text = "Has [color=" + this.Const.UI.Color.NegativeValue + "]-15%[/color] chance to hit targets directly adjacent because the weapon is too unwieldy"
			});
		}

		return ret;
	}

	function getExpectedDamage( _target )
	{
		local ret = this.skill.getExpectedDamage(_target);
		ret.HitpointDamage = this.Math.max(10, ret.HitpointDamage);
		ret.TotalDamage = this.Math.max(10, ret.TotalDamage);
		return ret;
	}

	function onAfterUpdate( _properties )
	{
		this.m.FatigueCostMult = _properties.IsSpecializedInHammers ? this.Const.Combat.WeaponSpecFatigueMult : 1.0;
	}

	function onUse( _user, _targetTile )
	{
		this.spawnAttackEffect(_targetTile, this.Const.Tactical.AttackEffectBash);
		local target = _targetTile.getEntity();
		return this.attackEntity(_user, target);
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_skill == this)
		{
			_properties.DamageArmorMult *= this.getContainer().getActor().getCurrentProperties().IsSpecializedInHammers ? 1.93 : 1.45;
			_properties.DamageRegularMult *= 0.0;
			_properties.DamageMinimum = this.Math.max(_properties.DamageMinimum, 10);

			if (_targetEntity != null && !this.getContainer().getActor().getCurrentProperties().IsSpecializedInHammers && this.getContainer().getActor().getTile().getDistanceTo(_targetEntity.getTile()) == 1)
			{
				_properties.MeleeSkill += -15;
				this.m.HitChanceBonus = -15;
			}
			else
			{
				this.m.HitChanceBonus = 0;
			}
		}
	}

});

