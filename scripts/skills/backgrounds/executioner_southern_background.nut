this.executioner_southern_background <- this.inherit("scripts/skills/backgrounds/executioner_background", {
	m = {},
	function create()
	{
		this.executioner_background.create();
		this.m.Excluded.push("trait.superstitious");
		this.m.Bodies = this.Const.Bodies.SouthernBig;
		this.m.Faces = this.Const.Faces.SouthernMale;
		this.m.Hairs = this.Const.Hair.SouthernMale;
		this.m.HairColors = this.Const.HairColors.Southern;
		this.m.Beards = this.Const.Beards.Southern;
		this.m.BeardChance = 60;
		this.m.Ethnicity = 1;
		this.m.Names = this.Const.Strings.SouthernNames;
		this.m.LastNames = this.Const.Strings.SouthernNamesLast;
	}

	function onBuildDescription()
	{
		return "{Once an executioner in the many nomad tribes of the South, %name% was banished {for a beheading gone horribly wrong | when it was discovered he\'d slain the wrong man | after he faked the death of a friend}. Aimless, he drifted into %randomcitystate% and resumed his trade in service of the viziers. | An executioner, %name% was tasked with beheading, hanging, quartering, and all the other punishments conveyed upon those criminals deemed unworthy of repaying their debts to the Gilder in life, and those who had been given the chance and failed. | %name% worked for %randomvizier% as an executioner, meting out grisly justice to the criminals of the South. | From his distinctive hood, it\'s clear %name% is an executioner. From his grim affect, it\'s clear he\'s been in the trade for some time.} {In the city states, however, even criminals are more valuable alive than dead, and soon he found himself running out of work and out of crowns. | One day he was charged with severing the neck of another headsman who had \'ruined\' an execution by allowing the condemned to predict the killing blow and scream. %name% carried out his own task in silence, then decided it was time to find a new line of work. | For many years he was content with his work, but one day he was tasked with {hanging a young boy who had stolen food from the market | beheading a beautiful concubine who had displeased her master | drowning an old man too feeble even to stand}. He performed his duty, but found he no longer had a taste for the profession after that. | Though happy enough in his role, he learned that all of his predecessors had eventually been indebted or executed themselves after displeasing his employer. Seeing the writing on the wall, he began looking for a new line of work.} {Unsure what else to do, %name% decided mercenary work was a good fit for his skillset. | Figuring he\'d be no less respected as a Crownling, but better paid, %name% now pursues a sellsword\'s career. | Accustomed to blood and blades alike, mercenary work is an obvious next step for %name%. | %name% tried his hand at a few occupations before deciding that his particular talents were best suited for the bloody, and well-paid, work of a sellsword.}";
	}

	function onAddEquipment()
	{
		local items = this.getContainer().getActor().getItems();
		local weapons = [
			"weapons/hatchet",
			"weapons/hand_axe",
			"weapons/exesword",
			"weapons/woodcutters_axe",
			"weapons/oriental/two_handed_scimitar",
			"weapons/oriental/two_handed_saif"
		];

		if (this.Const.DLC.Wildmen)
		{
			weapons.extend([
				"weapons/bardiche"
			]);
		}

		items.equip(this.new("scripts/items/" + weapons[this.Math.rand(0, weapons.len() - 1)]));
		local armor = [
			"armor/leather_wraps"
		];

		if (this.Math.rand(0, 100) < 50)
		{
			items.equip(this.new("scripts/items/" + armor[this.Math.rand(0, armor.len() - 1)]));
		}

		local helmets = [
			"helmets/executioner_hood",
			"helmets/executioner_hood_open"
		];
		items.equip(this.new("scripts/items/" + helmets[this.Math.rand(0, helmets.len() - 1)]));
	}

});

