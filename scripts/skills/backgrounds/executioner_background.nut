this.executioner_background <- this.inherit("scripts/skills/backgrounds/character_background", {
	m = {},
	function create()
	{
		this.character_background.create();
		this.m.ID = "background.executioner";
		this.m.Name = "Executioner";
		this.m.Icon = "ui/backgrounds/background_72.png";
		this.m.BackgroundDescription = "Executioners are dour and used to violence, although they have little experience in true warfare.";
		this.m.GoodEnding = "%name% eventually retired from the company and once again found himself plying the executioner\'s trade. His considerable decapitation skills only honed further by sellswording, the man has apparently gained such notoriety in his field that the local nobility frequently get into feuds over who may keep him on retainer.";
		this.m.BadEnding = "His skill with the headsman\'s blade sharpened further by combat, %name% left the company and resumed work as an executioner. The townsfolk found little spectacle in his efficiency, however, and he was soon replaced with a more crowd-pleasing amateur. Left destitute, it wasn\'t long before the man was found hanging from a tree outside of town.";
		this.m.HiringCost = 100;
		this.m.DailyCost = 12;
		this.m.Excluded = [
			"trait.fragile",
			"trait.teamplayer",
			"trait.hate_beasts",
			"trait.hate_greenskins",
			"trait.hate_undead",
			"trait.lucky",
			"trait.clubfooted",
			"trait.cocky",
			"trait.clumsy",
			"trait.hesitant",
			"trait.fainthearted",
			"trait.craven",
			"trait.fearless",
			"trait.optimist"
		];
		this.m.ExcludedTalents = [
			this.Const.Attributes.RangedSkill
		];
		this.m.Titles = [
			"Headtaker",
			"Neckrender",
			"the Axe",
			"the Judicator",
			"the Headsman",
			"the Executioner",
			"the Hangman"
		];
		this.m.Faces = this.Const.Faces.AllMale;
		this.m.Hairs = this.Const.Hair.UntidyMale;
		this.m.HairColors = this.Const.HairColors.All;
		this.m.Beards = this.Const.Beards.All;
		this.m.BeardChance = 50;
		this.m.Bodies = this.Const.Bodies.Big;
		this.m.Level = this.Math.rand(1, 3);
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
				id = 11,
				type = "text",
				icon = "ui/icons/chance_to_hit_head.png",
				text = "Higher Chance To Hit Head"
			}
		];
	}

	function onBuildDescription()
	{
		return "{As with many men, %name%\'s direction in life was dictated by the family business: executing criminals for the burgomeister of %randomtown%. | As a boy, %name% dreamed of becoming a knight clad in shining armor. As a man, he became an executioner clad in a dark hood. | %name%\'s whole family was slain in a bandit raid. Unable to join the manhunt himself, he became an apprentice to the local executioner in the hopes of one day meting out revenge in his own way. | Once a brigand himself, %name% had a change of heart and turned himself in. The local guard offered him a pardon if he agreed to execute any criminals they captured, and he\'s been in the trade ever since. | With the distant stare of one who has seen much death, and the worn blade of one who has dealt it, it\'s obvious that %name% is an executioner. | An executioner, %name% is about as cheerful as the gallows he operates.} {Though content with his profession, it made him unpopular. After carrying out the beheading of {a local youth sentenced for stealing from a noble | a beloved whore who slept with the wrong lord | a respected craftsman accused of embezzling}, he was ostracized by the townsfolk. | He always viewed himself as a necessary, if grisly, part of law for the common folk. But when he learned {his employer was making backroom deals with brigands | the local lord was ordering the deaths of the innocent | a man he executed was innocent | of the horrible things the local lord did with the heads of the condemned}, he resigned his post in disgust. | One day he was tasked with killing a strange cultist from distant lands. After he broke a third blade halfway through the strangely cheerful man\'s neck, he decided it was time to find a new profession. | But one day he woke up and found he could no longer stomach the idea of slaying a man who couldn\'t fight back. | But eventually he grew unhappy with his role, finding little satisfaction in slaying men after they\'d already performed their evil works.} {With few other careers available to him, %name% decided mercenary work seemed the best fit for his talents. | While not a warrior, %name% knows how to handle a blade, and so sellswording was the obvious career change. | With a skillset predominantly based around necklines, %name% decided he could either become a mercenary or a tailor. The former seemed like it paid better, and now here he is. | In need of a new career but with few other skills, %name% decided that mercenary work was sort of like executing with more steps.} {The man stands silently before you, staring wide-eyed and expectant but not saying a word. Ok then. | Less confident in conversation than in killing, he mumbles out a nervous greeting to you and asks about pay. | Not much for words, he grunts expectantly at you. As long as he can kill, you suppose you don\'t mind the quiet. | He approaches and barks something at you that his heavy hood muffles beyond comprehension. After a few moments of silence he follows up with \'...please?\' and you realize he\'s asking to join the company. Oh.}";
	}

	function onChangeAttributes()
	{
		local c = {
			Hitpoints = [
				10,
				7
			],
			Bravery = [
				12,
				10
			],
			Stamina = [
				9,
				14
			],
			MeleeSkill = [
				6,
				8
			],
			RangedSkill = [
				-5,
				0
			],
			MeleeDefense = [
				-5,
				0
			],
			RangedDefense = [
				-5,
				-5
			],
			Initiative = [
				-5,
				-5
			]
		};
		return c;
	}

	function onSetAppearance()
	{
		local actor = this.getContainer().getActor();
		local tattoo_body = actor.getSprite("tattoo_body");
		local tattoo_head = actor.getSprite("tattoo_head");

		if (this.Math.rand(1, 100) <= 25)
		{
			local body = actor.getSprite("body");
			tattoo_body.setBrush("scar_02_" + body.getBrush().Name);
			tattoo_body.Visible = true;
		}

		if (this.Math.rand(1, 100) <= 25)
		{
			tattoo_head.setBrush("scar_02_head");
			tattoo_head.Visible = true;
		}
	}

	function updateAppearance()
	{
		local actor = this.getContainer().getActor();
		local tattoo_body = actor.getSprite("tattoo_body");

		if (tattoo_body.HasBrush)
		{
			local body = actor.getSprite("body");
			tattoo_body.setBrush("scar_02_" + body.getBrush().Name);
		}
	}

	function onAddEquipment()
	{
		local items = this.getContainer().getActor().getItems();
		local weapons = [
			"weapons/hatchet",
			"weapons/hand_axe",
			"weapons/exesword",
			"weapons/woodcutters_axe"
		];

		if (this.Const.DLC.Wildmen)
		{
			weapons.extend([
				"weapons/bardiche"
			]);
		}

		items.equip(this.new("scripts/items/" + weapons[this.Math.rand(0, weapons.len() - 1)]));
		local armor = [
			"armor/leather_wraps",
			"armor/executioner_tunic"
		];

		if (this.Math.rand(0, 100) < 66)
		{
			items.equip(this.new("scripts/items/" + armor[this.Math.rand(0, armor.len() - 1)]));
		}

		local helmets = [
			"helmets/executioner_hood",
			"helmets/executioner_hood_open"
		];
		items.equip(this.new("scripts/items/" + helmets[this.Math.rand(0, helmets.len() - 1)]));
	}

	function onUpdate( _properties )
	{
		this.character_background.onUpdate(_properties);
		_properties.HitChance[this.Const.BodyPart.Head] += 10;
	}

});

