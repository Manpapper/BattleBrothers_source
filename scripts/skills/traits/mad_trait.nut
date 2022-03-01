this.mad_trait <- this.inherit("scripts/skills/traits/character_trait", {
	m = {},
	function create()
	{
		this.character_trait.create();
		this.m.ID = "trait.mad";
		this.m.Name = "Mad";
		this.m.Icon = "ui/traits/trait_icon_76.png";
		this.m.Description = "This character has gazed into the abyss, and the abyss has gazed right back at him, turning him quite mad. He often rambles unintelligibly, and his cryptic mind has become inaccessible both to his peers and to the enemy.";
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
				id = 10,
				type = "text",
				icon = "ui/icons/bravery.png",
				text = "Has [color=" + this.Const.UI.Color.PositiveValue + "]+15[/color] or [color=" + this.Const.UI.Color.NegativeValue + "]-15[/color] Resolve randomly at every morale check"
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/bravery.png",
				text = "Immune against fear and mind control abilities"
			}
		];
	}

	function onUpdate( _properties )
	{
		_properties.MoraleCheckBraveryMult[this.Const.MoraleCheckType.MentalAttack] *= 1000.0;
	}

});

