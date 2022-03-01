this.huge_trait <- this.inherit("scripts/skills/traits/character_trait", {
	m = {},
	function create()
	{
		this.character_trait.create();
		this.m.ID = "trait.huge";
		this.m.Name = "Huge";
		this.m.Icon = "ui/traits/trait_icon_61.png";
		this.m.Description = "Being particularly huge and burly, this character\'s strikes hurt plenty, but he\'s also a bigger target than most.";
		this.m.Titles = [
			"the Mountain",
			"the Ox",
			"the Bear",
			"the Giant",
			"the Tower",
			"the Bull"
		];
		this.m.Excluded = [
			"trait.tiny",
			"trait.quick",
			"trait.fragile"
		];
	}

	function getTooltip()
	{
		return [
			{
				id = 1,
				type = "title",
				text = this.getName()
			},
			{
				id = 2,
				type = "description",
				text = this.getDescription()
			},
			{
				id = 12,
				type = "text",
				icon = "ui/icons/regular_damage.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] Melee Damage"
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/melee_defense.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-5[/color] Melee Defense"
			},
			{
				id = 11,
				type = "text",
				icon = "ui/icons/ranged_defense.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-5[/color] Ranged Defense"
			}
		];
	}

	function onUpdate( _properties )
	{
		_properties.MeleeDamageMult *= 1.1;
		_properties.MeleeDefense -= 5;
		_properties.RangedDefense -= 5;
	}

});

