this.big_game_hunt_contract <- this.inherit("scripts/contracts/contract", {
	m = {
		Size = 0,
		Dude = null
	},
	function create()
	{
		this.contract.create();
		this.m.Type = "contract.big_game_hunt";
		this.m.Name = "Big Game Hunt";
		this.m.TimeOut = this.Time.getVirtualTimeF() + this.World.getTime().SecondsPerDay * 5.0;
		this.m.MakeAllSpawnsAttackableByAIOnceDiscovered = true;
		this.m.MakeAllSpawnsResetOrdersOnceDiscovered = true;
		this.m.DifficultyMult = 1.0;
	}

	function onImportIntro()
	{
		this.importNobleIntro();
	}

	function setup()
	{
		local r = this.Math.rand(1, 100);

		if (r <= 40)
		{
			this.m.Size = 0;
			this.m.DifficultyMult = 0.75;
		}
		else if (r <= 75 || this.World.getTime().Days <= 30)
		{
			this.m.Size = 1;
			this.m.DifficultyMult = 1.0;
		}
		else
		{
			this.m.Size = 2;
			this.m.DifficultyMult = 1.2;
		}
	}

	function start()
	{
		if (this.m.Home == null)
		{
			this.setHome(this.World.State.getCurrentTown());
		}

		local maximumHeads;
		local priceMult = 1.0;

		if (this.m.Size == 0)
		{
			local priceMult = 1.0;
			maximumHeads = [
				15,
				20,
				25,
				30
			];
		}
		else if (this.m.Size == 1)
		{
			local priceMult = 4.0;
			maximumHeads = [
				10,
				12,
				15,
				18,
				20
			];
		}
		else
		{
			local priceMult = 8.0;
			maximumHeads = [
				8,
				10,
				12,
				15
			];
		}

		this.m.Payment.Pool = 1300 * this.getPaymentMult() * this.Math.pow(this.getDifficultyMult(), this.Const.World.Assets.ContractRewardPOW) * this.getReputationToPaymentMult() * priceMult;
		this.m.Payment.Count = 1.0;
		this.m.Payment.MaxCount = maximumHeads[this.Math.rand(0, maximumHeads.len() - 1)];
		local settlements = this.World.FactionManager.getFaction(this.m.Faction).getSettlements();
		local other_settlements = this.World.EntityManager.getSettlements();
		local regions = this.World.State.getRegions();
		local candidates_first = [];
		local candidates_second = [];

		foreach( i, r in regions )
		{
			local inSettlements = 0;
			local nearSettlements = 0;

			if (r.Type == this.Const.World.TerrainType.Snow || r.Type == this.Const.World.TerrainType.Mountains || r.Type == this.Const.World.TerrainType.Desert || r.Type == this.Const.World.TerrainType.Oasis)
			{
				continue;
			}

			if (!r.Center.IsDiscovered)
			{
				continue;
			}

			if (this.m.Size == 2 && r.Type != this.Const.World.TerrainType.Steppe && r.Type != this.Const.World.TerrainType.Forest && r.Type != this.Const.World.TerrainType.LeaveForest && r.Type != this.Const.World.TerrainType.AutumnForest)
			{
				continue;
			}

			if (r.Discovered < 0.5)
			{
				this.World.State.updateRegionDiscovery(r);
			}

			if (r.Discovered < 0.5)
			{
				continue;
			}

			foreach( s in settlements )
			{
				local t = s.getTile();

				if (t.Region == i + 1)
				{
					inSettlements = ++inSettlements;
				}
				else if (t.getDistanceTo(r.Center) <= 20)
				{
					local skip = false;

					foreach( o in other_settlements )
					{
						if (o.getFaction() == this.getFaction())
						{
							continue;
						}

						local ot = o.getTile();

						if (ot.Region == i + 1 || ot.getDistanceTo(r.Center) <= 10)
						{
							skip = true;
							break;
						}
					}

					if (!skip)
					{
						nearSettlements = ++nearSettlements;
					}
				}
			}

			if (nearSettlements > 0 && inSettlements == 0)
			{
				candidates_first.push(i + 1);
			}
			else if (inSettlements > 0 && inSettlements <= 1)
			{
				candidates_second.push(i + 1);
			}
		}

		local region;

		if (candidates_first.len() != 0)
		{
			region = candidates_first[this.Math.rand(0, candidates_first.len() - 1)];
		}
		else if (candidates_second.len() != 0)
		{
			region = candidates_second[this.Math.rand(0, candidates_second.len() - 1)];
		}
		else
		{
			region = settlements[this.Math.rand(0, settlements.len() - 1)].getTile().Region;
		}

		this.m.Flags.set("Region", region);
		this.m.Flags.set("HeadsCollected", 0);
		this.m.Flags.set("StartDay", 0);
		this.m.Flags.set("LastUpdateDay", 0);
		this.contract.start();
	}

	function createStates()
	{
		this.m.States.push({
			ID = "Offer",
			function start()
			{
				this.Flags.set("StartDay", this.World.getTime().Days);
				this.Contract.m.BulletpointsObjectives.clear();

				if (this.Contract.m.Size == 0)
				{
					if (this.Const.DLC.Desert)
					{
						this.Contract.m.BulletpointsObjectives.push("Hunt for Direwolves, Webknechts, Nachzehrers, Hyenas and Serpents");
					}
					else
					{
						this.Contract.m.BulletpointsObjectives.push("Hunt for Direwolves, Webknechts and Nachzehrers");
					}
				}
				else if (this.Contract.m.Size == 1)
				{
					this.Contract.m.BulletpointsObjectives.push("Hunt for Alps, Unholds and Hexen");
				}
				else
				{
					this.Contract.m.BulletpointsObjectives.push("Hunt for Schrats and Lindwurms");
				}

				this.Contract.m.BulletpointsObjectives.push("Hunt around the %regiontype% region of %worldmapregion% and other regions");
				this.Contract.m.BulletpointsObjectives.push("Return to %townname% at any time to get paid");

				if (this.Contract.m.Size == 0)
				{
					this.Contract.setScreen("TaskSmall");
				}
				else if (this.Contract.m.Size == 1)
				{
					this.Contract.setScreen("TaskMedium");
				}
				else
				{
					this.Contract.setScreen("TaskLarge");
				}
			}

			function end()
			{
				this.Flags.set("StartDay", this.World.getTime().Days);
				local action = this.World.FactionManager.getFactionOfType(this.Const.FactionType.Beasts).getAction("send_beast_roamers_action");
				local options;

				if (this.Contract.m.Size == 0)
				{
					options = action.m.BeastsLow;
				}
				else if (this.Contract.m.Size == 1)
				{
					options = action.m.BeastsMedium;
				}
				else
				{
					options = action.m.BeastsHigh;
				}

				local nearTile = this.World.State.getRegion(this.Flags.get("Region")).Center;

				for( local i = 0; i < 3; i = ++i )
				{
					for( local tries = 0; tries++ < 1000;  )
					{
						if (options[this.Math.rand(0, options.len() - 1)](action, nearTile))
						{
							local party = action.getFaction().getUnits()[action.getFaction().getUnits().len() - 1];
							party.setAttackableByAI(false);
							this.Contract.m.UnitsSpawned.push(party.getID());
							local wait = this.new("scripts/ai/world/orders/wait_order");
							wait.setTime(15.0);
							party.getController().addOrderInFront(wait);
							local footPrintsOrigin = this.Contract.getTileToSpawnLocation(nearTile, 4, 8);
							this.Const.World.Common.addFootprintsFromTo(footPrintsOrigin, party.getTile(), this.Const.BeastFootprints, party.getFootprintType(), party.getFootprintsSize(), 1.1);
							break;
						}
					}
				}

				this.Contract.setScreen("Overview");
				this.World.Contracts.setActiveContract(this.Contract);
			}

		});
		this.m.States.push({
			ID = "Running",
			function start()
			{
				this.Contract.m.BulletpointsObjectives.clear();

				if (this.Contract.m.Size == 0)
				{
					if (this.Const.DLC.Desert)
					{
						this.Contract.m.BulletpointsObjectives.push("Hunt for Direwolves, Webknechts and Nachzehrers around the %regiontype% region of %worldmapregion% (%killcount%/%maxcount%)");
					}
					else
					{
						this.Contract.m.BulletpointsObjectives.push("Hunt for Direwolves, Webknechts, Nachzehrers, Hyenas and Serpents around the %regiontype% region of %worldmapregion% (%killcount%/%maxcount%)");
					}
				}
				else if (this.Contract.m.Size == 1)
				{
					this.Contract.m.BulletpointsObjectives.push("Hunt for Alps, Unholds and Hexen around the %regiontype% region of %worldmapregion% (%killcount%/%maxcount%)");
				}
				else
				{
					this.Contract.m.BulletpointsObjectives.push("Hunt for Schrats and Lindwurms around the %regiontype% region of %worldmapregion% (%killcount%/%maxcount%)");
				}

				this.Contract.m.BulletpointsObjectives.push("Return to %townname% at any time to get paid");
			}

			function update()
			{
				if (this.Contract.isPlayerAt(this.Contract.m.Home) && this.Flags.get("HeadsCollected") != 0)
				{
					if (this.Contract.m.Size == 0)
					{
						this.Contract.setScreen("SuccessSmall");
					}
					else if (this.Contract.m.Size == 1)
					{
						this.Contract.setScreen("SuccessMedium");
					}
					else
					{
						this.Contract.setScreen("SuccessLarge");
					}

					this.World.Contracts.showActiveContract();
				}
			}

			function onActorKilled( _actor, _killer, _combatID )
			{
				if (_killer != null && _killer.getFaction() != this.Const.Faction.Player && _killer.getFaction() != this.Const.Faction.PlayerAnimals)
				{
					return;
				}

				if (this.Flags.get("HeadsCollected") >= this.Contract.m.Payment.MaxCount)
				{
					return;
				}

				if (this.Contract.m.Size == 0)
				{
					if (_actor.getType() == this.Const.EntityType.Ghoul || _actor.getType() == this.Const.EntityType.Direwolf || _actor.getType() == this.Const.EntityType.Spider || _actor.getType() == this.Const.EntityType.Hyena || _actor.getType() == this.Const.EntityType.Serpent)
					{
						this.Flags.set("HeadsCollected", this.Flags.get("HeadsCollected") + 1);
					}
				}
				else if (this.Contract.m.Size == 1)
				{
					if (_actor.getType() == this.Const.EntityType.Alp || _actor.getType() == this.Const.EntityType.Unhold || _actor.getType() == this.Const.EntityType.UnholdFrost || _actor.getType() == this.Const.EntityType.UnholdBog || _actor.getType() == this.Const.EntityType.Hexe)
					{
						this.Flags.set("HeadsCollected", this.Flags.get("HeadsCollected") + 1);
					}
				}
				else if (_actor.getType() == this.Const.EntityType.Lindwurm && !this.isKindOf(_actor, "lindwurm_tail") || _actor.getType() == this.Const.EntityType.Schrat)
				{
					this.Flags.set("HeadsCollected", this.Flags.get("HeadsCollected") + 1);
				}
			}

			function onCombatVictory( _combatID )
			{
				this.start();
				this.World.State.getWorldScreen().updateContract(this.Contract);
			}

			function onRetreatedFromCombat( _combatID )
			{
				this.start();
				this.World.State.getWorldScreen().updateContract(this.Contract);
			}

		});
	}

	function createScreens()
	{
		this.importScreens(this.Const.Contracts.NegotiationPerHead);
		this.importScreens(this.Const.Contracts.Overview);
		this.m.Screens.push({
			ID = "TaskSmall",
			Title = "Negotiations",
			Text = "[img]gfx/ui/events/event_63.png[/img]{You enter %employer%\'s room. The man is picking his fingers with a peacock feather, wagging its colors around on one end while fishing out grime with the other. He talks rather dismissively to your presence.%SPEECH_ON%My guards have already informed that you are interested in a beast hunt and I\'m quite glad that you are. The pay will be per head. Smaller beasts, webknechts, corpse eating things, the sort I\'m sure are of no trouble to you, but which the fellow locals are too scared to confront. If you\'re as good at your job as folks seem to say, then you shouldn\'t dally jumping on this offer. Rid my lands of these. To start with, there\'s been sightings in the region of %worldmapregion% %distance% %direction% of here.%SPEECH_OFF% | %employer% welcomes you into his room. He takes a scroll the town crier had given you while walking through the markets earlier.%SPEECH_ON%Ah, you\'re here for the beast hunt then. I thought you were entertainment of a...%SPEECH_OFF%He pinches the side of your shirt and tilts a smile.%SPEECH_ON%Different sort. Well, nonetheless, beasts are ravaging the countryside and I\'d happily pay you a tidy sum to take care of them. The pay will be per head, of course, giving you a wealth of riches to earn if you keep that blade of yours slick. If you need a place to start your hunt, travel to the region of %worldmapregion% %distance% %direction% of here. There you\'ll find an assortment of large eight-legged freaks and furry monsters. Whatever it is that would frighten a common farmer, nothing too scary for you though, you big man you.%SPEECH_OFF% | You find %employer% with his bootless feet up on a table, a throng of women pruning them. They thumb plugs of thickened dirt from between his toes like the birth rites of some imago monstrosity. You clear your throat. The man clears his throat in a startled return.%SPEECH_ON%Ah yes, the sellsword. Here, I\'ve a task for you if you are interested.%SPEECH_OFF%He dismissively throws a scroll at your feet which lists a need for beast slaying. Webknechts. Slender wolves. Nothing too frightening. A note on the map points to the nearby region of %worldmapregion% to the %direction%. The man belches.%SPEECH_ON%The pay is per head, hope that suits you well.%SPEECH_OFF% | You find %employer% turning a helve in hand. The demarcation between handle and where the blade should have been is clearly splintered, showing a decisive end to the weapon\'s use. The man throws it on his table and claps sawdust off his palms.%SPEECH_ON%Beasts are roaming these parts and I need someone of your stock to slay them all. What say you, hm? The pay will be by the head. To start your hunt, head to the region of %worldmapregion% to the %direction%. All manner of lesser beasts are being a nuisance there.%SPEECH_OFF% | %employer% welcomes you to his room. His table is covered in scrolls, each with drawings of animals and beasts and possibly even monsters. He\'s jawing on some berries, spitting juice as he talks.%SPEECH_ON%Locals say there are foul things afoot, though not a one will give me a proper description as to what it is the trouble. Something about monstrous wolves or eight-legged monsters. I can hardly stand around and do nothing so that\'s why I\'m requesting your services. Head to the fief of %worldmapregion% %distance% %direction%. If you see any beasts then slay them where they stand and take their heads. I\'ll pay by the scalp.%SPEECH_OFF% | %employer% meets you while in congress with a group of farmers. He states that supposed monsters are tearing the hinterland to pieces. A farmer pipes up.%SPEECH_ON%Beasts, the lot of them. Wolves that walk on their hindlegs, spiders yea big, corpse eating things that stink of scum.%SPEECH_OFF%The nobleman waves his hand.%SPEECH_ON%Yes, yes, that\'s enough. Sellsword, I need you to go to head out and hunt these creatures down. Start by travelling to the region of %worldmapregion% to the %direction% of here and see to it that any beasts afoot are put to the earth. But do be sure to bring back their heads, I\'ll be paying you for each. That is, if you\'re interested of course.%SPEECH_OFF%}",
			Image = "",
			List = [],
			ShowEmployer = true,
			ShowDifficulty = true,
			Options = [
				{
					Text = "{How many crowns are we talking about here? | I could be persuaded for the right price. | Go on. | How much is the safety of your subjects worth to you?}",
					function getResult()
					{
						return "Negotiation";
					}

				},
				{
					Text = "{That\'s too much walking for my taste. | We\'re not about to chase ghosts around %worldmapregion%. | That\'s not the kind of work we\'re looking for.}",
					function getResult()
					{
						this.World.Contracts.removeContract(this.Contract);
						return 0;
					}

				}
			],
			function start()
			{
			}

		});
		this.m.Screens.push({
			ID = "TaskMedium",
			Title = "Negotiations",
			Text = "[img]gfx/ui/events/event_63.png[/img]{%employer% is flipping the pages of a tome when you enter. He looks up and waves you over.%SPEECH_ON%Bring a candle.%SPEECH_OFF%You take a sconce off the wall and the nobleman throws his hands up.%SPEECH_ON%I said a candle not a bloody torch! What do you aim to do, burn every book I have to ash? Just stay right where you are. Look, folks around these parts have been speaking of evils I\'ve not heard of in years. Monsters that prey upon your dreams, giants so large a man could fit inside their beards, and the worst of them, of course, beautiful women who know they\'re beautiful.%SPEECH_OFF%You\'re not so sure about that last one, but don\'t speak to it. The nobleman goes on to explain that you are to slay every one of these cretins you find throughout his realm. There\'s been sightings at %worldmapregion% to the %direction%, but you\'re free to hunt the creatures at your discretion wherever they may hide. | You find %employer% in congress with a number of men in black cloaks. They bid you to come over which you reluctantly do. The nobleman asks if you know of monsters like unholds, or creatures that feast on dreams. Before you can answer, he waves his hand.%SPEECH_ON%No matter. I need some armed men to comb through the %worldmapregion% region %direction% of here and see if anything strange is afoot. If it ain\'t human with a heartbeat, kill it. Take its head. And come back to me. I\'ll pay you handsomely for each scalp. If they exist, that is.%SPEECH_OFF% | %employer% is weighing scrolls in both hands, reading neither as he stares at a third on his desk. Finally, he tosses the two and swipes away the last. He looks at you.%SPEECH_ON%Word is spreading about monsters being afoot. Giant men eating cattle and children. I\'ve reports of people having nightmares and killing their neighbors over them. And then there is a lot of word going around about a beautiful woman in these parts. I don\'t know if she\'s a foul creature of any sort, but a beautiful woman inhabiting %worldmapregion% to the %direction% of here sounds an awful lot like trouble to me.%SPEECH_OFF%You nod. A woman alone in a strange area, that\'s certainly trouble for someone. The nobleman throws his arms wide.%SPEECH_ON%Would you take your men to this land and find the line between truth and fiction? And if you find something that slithers or hisses or is otherwise unhuman, slay the damned thing and bring me its head.%SPEECH_OFF% | You find %employer% poring over some books with a candle so close to the page the penumbra pales at the tome\'s edges. It is as if he alone should read the texts. Seeing you, he waves you forward.%SPEECH_ON%I\'ve reports of strange happenings in the region of %worldmapregion% to the %direction%. Murders are up and all the hells if I know why. And then some folks are just flat disappearing. Never a good sign. I don\'t know if it\'s cult or creature which is responsible, but I need some armed men to go to this land and set it straight. If you cross steel with something unworldly, then bring me its head for such a thing I shall pay handsomely for.%SPEECH_OFF% | %employer% is found atop a ladder, rifling through the highest shelf he has. He shakes his head and waves you in.%SPEECH_ON%I don\'t have a goddam clue of what it is I\'m looking for.%SPEECH_OFF%You nod and tell him to join the club. The man climbs down.%SPEECH_ON%Very funny, mercenary. Look, I\'m getting word of chaos in the region of %worldmapregion% %distance% %direction% of here. Not many folks live out that way, but those who do are speaking of absolute horrors walking the land. Giant men, spirits infesting their dreams, you name it. I need you to take your band of men and quell that which \'bubbles and boils\', yeah? And bring me the heads of any inhuman monstrosity you find. I\'ll pay you well for each.%SPEECH_OFF%}",
			Image = "",
			List = [],
			ShowEmployer = true,
			ShowDifficulty = true,
			Options = [
				{
					Text = "{How many crowns are we talking about here? | I could be persuaded for the right price. | Go on. | How much is the safety of your subjects worth to you?}",
					function getResult()
					{
						return "Negotiation";
					}

				},
				{
					Text = "{That\'s too much walking for my taste. | We\'re not about to chase ghosts around %worldmapregion%. | That\'s not the kind of work we\'re looking for.}",
					function getResult()
					{
						this.World.Contracts.removeContract(this.Contract);
						return 0;
					}

				}
			],
			function start()
			{
			}

		});
		this.m.Screens.push({
			ID = "TaskLarge",
			Title = "Negotiations",
			Text = "[img]gfx/ui/events/event_63.png[/img]{%employer% sits at a desk. There\'s not another soul in the room. A seat is offered which you take. He leans forward.%SPEECH_ON%My family has a legend of sorts. My father ran into this legend, and my father\'s father. We know not where the legend comes from. I expected to see the legend in my own time and I feel now I have. In a dream, last night.%SPEECH_OFF%Hearing this, you are at the edge of your seat because the middle of it has a hole. You nod and he continues.%SPEECH_ON%Travel to %worldmapregion% to the %direction%. I believe the legends are true, that an enormous beast roams those lands. Maybe even more than just one! However many there are, I need the most experienced of sellswords to seek it out. Bring me heads and you will be rewarded handsomely. Are you willing?%SPEECH_OFF% | You enter %employer%\'s room. He slides you a scroll upon which is an alphabet you can\'t read. The nobleman states that it is a passage of legend. His arms go wide.%SPEECH_ON%Beasts the size of trees roam these lands, I believe it so. %direction% of here lies the region of %worldmapregion%. The peasants there speak of great monstrosities like you wouldn\'t believe. But I would like to believe it. I\'d like to see one up close which is why I\'ve summoned you here. Go to that horrid tract and see to it that any unworldly creature is slain and its head placed before my feet.%SPEECH_OFF% | %employer% welcomes you to his room then cuts straight to business.%SPEECH_ON%I need you to head %direction% to the region of %worldmapregion%. I\'ve recorded numerous rumors of enormous beasts roaming that land and I believe every word of them. Snakes the size of trees and tree mimics also the size of trees! Whatever the hell they be, I want you to kill them and bring me their heads. Or scales, branches, whatever. I\'ll pay for each you bring. Does this interest you?%SPEECH_OFF% | %employer% hands you a tome with some of the pages dogeared. You think this a dangerous affront to a material which is decidedly rare, but bite your tongue on the matter. The nobleman asks if you know of giants, dragons, sea monsters and the like. Before you can answer, %employer% puts his finger on the book\'s opened page. His knuckle wraps against the drawing of a beast that\'s taller than an oak tree, partly because it looks like an oak tree.%SPEECH_ON%I think they exist. I think they\'re out there in %worldmapregion% right now, just %direction% of here. Sellsword, I want you to travel there and slay every foul creature you find. Bring me their heads. The dangers can\'t be measured, but the enormous rewards will be. Do you think yourself capable?%SPEECH_OFF% | %employer% welcomes you with the face of a man about to send someone to certain doom. He smiles anyway on account of it not being his doom.%SPEECH_ON%Ah, it is good to see a man of the sword. As I\'m sure you have heard, rumors abuzz about the region of %worldmapregion% being absolutely pregnant with foul beasts.%SPEECH_OFF%You\'re not sure if that\'s the verbiage you\'d use, but nod anyway. The nobleman nods in return.%SPEECH_ON%I\'ve few men I trust in this world and one of them recently reported seeing a creature of enormity beyond measure, though he reckoned it as tall as a tree. And another scout said snakes the size of dragons wandered the parts just as well. Whatever\'s there, I need you to travel to the land %direction% of here and kill whatever haunts it. Based upon the reports, this could be the most dangerous thing you do in this life. Are you ready? Are your men ready? I will not hire someone who dallies in the slightest.%SPEECH_OFF%}  ",
			Image = "",
			List = [],
			ShowEmployer = true,
			ShowDifficulty = true,
			Options = [
				{
					Text = "{How many crowns are we talking about here? | That\'s no small feat to ask. | I could be persuaded for the right price. | A task like this better pay well. | How much is the safety of your subjects worth to you?}",
					function getResult()
					{
						return "Negotiation";
					}

				},
				{
					Text = "{We\'re not about to chase ghosts around %worldmapregion%. | That\'s not the kind of work we\'re looking for. | I won\'t risk the company against an enemy such as this.}",
					function getResult()
					{
						this.World.Contracts.removeContract(this.Contract);
						return 0;
					}

				}
			],
			function start()
			{
			}

		});
		this.m.Screens.push({
			ID = "SuccessSmall",
			Title = "On your return...",
			Text = "[img]gfx/ui/events/event_04.png[/img]{You come back and dump the beastly heads onto %employer%\'s floor. He looks up from his desk.%SPEECH_ON%Well that was unwarranted. Fetch the man his money, and fetch a servant to clean this mess.%SPEECH_OFF% | %employer% welcomes your return, though he keeps his distance. He\'s staring at your cargo.%SPEECH_ON%A fitting return, sellsword. I\'ll have one of my men count the heads and pay you according to our agreement.%SPEECH_OFF% | The slayings are produced for %employer%\'s approval. He nods and waves you away.%SPEECH_ON%Appreciated, but I need not look at those ghastly things a moment longer. %randomname%, come hither and pay this sellsword his money.%SPEECH_OFF% | %employer% welcomes you back and looks over your wares.%SPEECH_ON%Absolutely disgusting. Splendid! Here is your pay, as agreed upon.%SPEECH_OFF% | You show the heads to %employer% who counts them with a wiggling finger and his lips whispering numbers. Finally, he straightens up.%SPEECH_ON%I don\'t have time for this shite. %randomname%, yes you servant, get over here and count these heads and pay the sellsword the agreed amount for each.%SPEECH_OFF% | %employer% is eating an apple as he walks over to see what you\'ve returned with. He stares into the satchel of ghastly beast heads. He takes a huge bite of the apple.%SPEECH_ON%Ehpressive rehsalts, sehswahrd.%SPEECH_OFF%He quickly chews and swallows in a big gulp.%SPEECH_ON%See my servant standing idly yonder with the purse. He\'ll pay out what you are owed.%SPEECH_OFF%The nobleman tosses the half-eaten apple and fetches himself another. | %employer% has a child with him when you enter his room. The kiddo rushes to see what you\'ve brought, then retreats in a screaming fit. The nobleman nods.%SPEECH_ON%Suppose that means you got what I paid you for. My servant %randomname% will count the heads and pay what you are owed.%SPEECH_OFF% | You lug the heads into %employer%\'s room. He raises an eyebrow.%SPEECH_ON%Did you have to drag those all the way in here? Look, you\'ve left a stain! Why didn\'t you just fetch a servant, that\'s what they\'re there for. By the old gods the smell is worse than the stains!%SPEECH_OFF%The nobleman snaps his fingers at a man standing with a purse.%SPEECH_ON%%randomname%, count the heads and see to it that the sellsword gets his pay.%SPEECH_OFF% | You unfurl the sack of heads and let them pile onto %employer%\'s floor. He stands up.%SPEECH_ON%That\'s not on the rug, is it?%SPEECH_OFF%A servant runs over and kicks the heads apart. He quickly shakes his head no. The nobleman nods and slowly sits down.%SPEECH_ON%Good. You there, %randomname%, get to counting and then pay this mess making sellsword his dues. And by the way, mercenary, take it easy on the presentation next time, alright?%SPEECH_OFF% | You lug a satchel of beast scalps and heads into %employer%\'s room. Popping the lid, you start to tip it forward. A servant\'s eyes go wide and he rushes forward, slamming into the satchel and tilting it back over. The lid clatters closed over his fingers and he chokes down a yelp.%SPEECH_ON%Thank you, mercenary, but the noble sir would prefer we count these without spilling them all over the floor. I will add up the totals and pay you once I am finished.%SPEECH_OFF% | %employer% reviews your handiwork.%SPEECH_ON%Impressive. Disgusting. Not you, the beasts. I mean you\'re a filthy sort, sellsword, but these foul beasts are the antithesis of hygiene.%SPEECH_OFF%You don\'t know what that word means, or the other one for that matter. You simply ask that he count the heads and give you what you\'re owed. | %employer% counts the heads and then leans backs. He shrugs.%SPEECH_ON%I thought they\'d be scarier.%SPEECH_OFF%You mention that they\'ve but a slightly different affect on one\'s courage when still attached to the beastly torsos. The nobleman shrugs again.%SPEECH_ON%I suppose so, but my mother lost her head to an executioner\'s blade and she looked all the scarier settin\' in that basket staring up at the world.%SPEECH_OFF%You don\'t know what to say to that. You ask the man to pay you what you\'re owed. | %employer% eyes the beastly heads you\'ve deposited upon his floor. A servant with a broom counts them one by one, subtracting from one pile to add to another. When he\'s finished the accounting he reports his numbers and the nobleman nods.%SPEECH_ON%Good work, sellsword. The servant will fetch your pay.%SPEECH_OFF%The lowborn sighs and puts the broom away. | %employer% opens the satchel of beastly scalps and skulls. He purses his lips, sniffs, and claps it back closed. The nobleman instructs one of his servants to count out the remains and pay you according to the agreement.%SPEECH_ON%A good job, sellsword. The townsfolk are grateful that I paid you to take care of this.%SPEECH_OFF% | %employer% whistles as he stares at your collection of skulls and scalps.%SPEECH_ON%That\'s a hell of a sigh if there ever was one. For work of this nasty nature I should consider paying you extra, which I won\'t, but the thought crossed my mind and that\'s what really counts.%SPEECH_OFF%}",
			Image = "",
			List = [],
			ShowEmployer = true,
			Options = [
				{
					Text = "A successful hunt.",
					function getResult()
					{
						this.World.Assets.addBusinessReputation(this.Const.World.Assets.ReputationOnContractSuccess);
						this.World.Assets.addMoney(this.Contract.m.Payment.getOnCompletion());
						this.World.Assets.addMoney(this.Contract.m.Payment.getPerCount() * this.Flags.get("HeadsCollected"));
						this.World.FactionManager.getFaction(this.Contract.getFaction()).addPlayerRelation(this.Const.World.Assets.RelationNobleContractSuccess, "Hunted beasts around " + this.World.State.getRegion(this.Flags.get("Region")).Name);
						this.World.Contracts.finishActiveContract();
						return 0;
					}

				}
			],
			function start()
			{
				local money = this.Contract.m.Payment.getOnCompletion() + this.Contract.m.Payment.getPerCount() * this.Flags.get("HeadsCollected");
				this.List.push({
					id = 10,
					icon = "ui/icons/asset_money.png",
					text = "You gain [color=" + this.Const.UI.Color.PositiveEventValue + "]" + money + "[/color] Crowns"
				});
			}

		});
		this.m.Screens.push({
			ID = "SuccessMedium",
			Title = "On your return...",
			Text = "[img]gfx/ui/events/event_04.png[/img]{You come back and dump the beastly heads onto %employer%\'s floor. He looks up from his desk.%SPEECH_ON%Well that was unwarranted. Fetch the man his money, and fetch a servant to clean this mess.%SPEECH_OFF% | %employer% welcomes your return, though he keeps his distance. He\'s staring at your cargo.%SPEECH_ON%A fitting return, sellsword. I\'ll have one of my men count the heads and pay you according to our agreement.%SPEECH_OFF% | The slayings are produced for %employer%\'s approval. He nods and waves you away.%SPEECH_ON%Appreciated, but I need not look at those ghastly things a moment longer. %randomname%, come hither and pay this sellsword his money.%SPEECH_OFF% | %employer% welcomes you back and looks over your wares.%SPEECH_ON%Absolutely disgusting. Splendid! Here is your pay, as agreed upon.%SPEECH_OFF% | You show the heads to %employer% who counts them with a wiggling finger and his lips whispering numbers. Finally, he straightens up.%SPEECH_ON%I don\'t have time for this shite. %randomname%, yes you servant, get over here and count these heads and pay the sellsword the agreed amount for each.%SPEECH_OFF% | %employer% is eating an apple as he walks over to see what you\'ve returned with. He stares into the satchel of ghastly beast heads. He takes a huge bite of the apple.%SPEECH_ON%Ehpressive rehsalts, sehswahrd.%SPEECH_OFF%He quickly chews and swallows in a big gulp.%SPEECH_ON%See my servant standing idly yonder with the purse. He\'ll pay out what you are owed.%SPEECH_OFF%The nobleman tosses the half-eaten apple and fetches himself another. | %employer% has a child with him when you enter his room. The kiddo rushes to see what you\'ve brought, then retreats in a screaming fit. The nobleman nods.%SPEECH_ON%Suppose that means you got what I paid you for. My servant %randomname% will count the heads and pay what you are owed.%SPEECH_OFF% | You lug the heads into %employer%\'s room. He raises an eyebrow.%SPEECH_ON%Did you have to drag those all the way in here? Look, you\'ve left a stain! Why didn\'t you just fetch a servant, that\'s what they\'re there for. By the old gods the smell is worse than the stains!%SPEECH_OFF%The nobleman snaps his fingers at a man standing with a purse.%SPEECH_ON%%randomname%, count the heads and see to it that the sellsword gets his pay.%SPEECH_OFF% | You unfurl the sack of heads and let them pile onto %employer%\'s floor. He stands up.%SPEECH_ON%That\'s not on the rug, is it?%SPEECH_OFF%A servant runs over and kicks the heads apart. He quickly shakes his head no. The nobleman nods and slowly sits down.%SPEECH_ON%Good. You there, %randomname%, get to counting and then pay this mess making sellsword his dues. And by the way, mercenary, take it easy on the presentation next time, alright?%SPEECH_OFF% | You lug a satchel of beast scalps and heads into %employer%\'s room. Popping the lid, you start to tip it forward. A servant\'s eyes go wide and he rushes forward, slamming into the satchel and tilting it back over. The lid clatters closed over his fingers and he chokes down a yelp.%SPEECH_ON%Thank you, mercenary, but the noble sir would prefer we count these without spilling them all over the floor. I will add up the totals and pay you once I am finished.%SPEECH_OFF% | %employer% reviews your handiwork.%SPEECH_ON%Impressive. Disgusting. Not you, the beasts. I mean you\'re a filthy sort, sellsword, but these foul beasts are the antithesis of hygiene.%SPEECH_OFF%You don\'t know what that word means, or the other one for that matter. You simply ask that he count the heads and give you what you\'re owed. | %employer% counts the heads and then leans backs. He shrugs.%SPEECH_ON%I thought they\'d be scarier.%SPEECH_OFF%You mention that they\'ve but a slightly different affect on one\'s courage when still attached to the beastly torsos. The nobleman shrugs again.%SPEECH_ON%I suppose so, but my mother lost her head to an executioner\'s blade and she looked all the scarier settin\' in that basket staring up at the world.%SPEECH_OFF%You don\'t know what to say to that. You ask the man to pay you what you\'re owed. | %employer% eyes the beastly heads you\'ve deposited upon his floor. A servant with a broom counts them one by one, subtracting from one pile to add to another. When he\'s finished the accounting he reports his numbers and the nobleman nods.%SPEECH_ON%Good work, sellsword. The servant will fetch your pay.%SPEECH_OFF%The lowborn sighs and puts the broom away. | %employer% opens the satchel of beastly scalps and skulls. He purses his lips, sniffs, and claps it back closed. The nobleman instructs one of his servants to count out the remains and pay you according to the agreement.%SPEECH_ON%A good job, sellsword. The townsfolk are grateful that I paid you to take care of this.%SPEECH_OFF% | %employer% whistles as he stares at your collection of skulls and scalps.%SPEECH_ON%That\'s a hell of a sigh if there ever was one. For work of this nasty nature I should consider paying you extra, which I won\'t, but the thought crossed my mind and that\'s what really counts.%SPEECH_OFF%}",
			Image = "",
			List = [],
			ShowEmployer = true,
			Options = [
				{
					Text = "A successful hunt.",
					function getResult()
					{
						this.World.Assets.addBusinessReputation(this.Const.World.Assets.ReputationOnContractSuccess);
						this.World.Assets.addMoney(this.Contract.m.Payment.getOnCompletion());
						this.World.Assets.addMoney(this.Contract.m.Payment.getPerCount() * this.Flags.get("HeadsCollected"));
						this.World.FactionManager.getFaction(this.Contract.getFaction()).addPlayerRelation(this.Const.World.Assets.RelationNobleContractSuccess, "Hunted beasts around " + this.World.State.getRegion(this.Flags.get("Region")).Name);
						this.World.Contracts.finishActiveContract();
						return 0;
					}

				}
			],
			function start()
			{
				local money = this.Contract.m.Payment.getOnCompletion() + this.Contract.m.Payment.getPerCount() * this.Flags.get("HeadsCollected");
				this.List.push({
					id = 10,
					icon = "ui/icons/asset_money.png",
					text = "You gain [color=" + this.Const.UI.Color.PositiveEventValue + "]" + money + "[/color] Crowns"
				});
			}

		});
		this.m.Screens.push({
			ID = "SuccessLarge",
			Title = "On your return...",
			Text = "[img]gfx/ui/events/event_04.png[/img]{You lug the remains of your hunt into %employer%\'s room. He jumps back as though you\'d mastered the beast itself and ridden it to conquer. Clutching his chest, the nobleman sets back down.%SPEECH_ON%By the old gods, sellsword, if you weren\'t such a fool you would have left that in the yard and fetched me to walk on down.%SPEECH_OFF%Shrugging, you ask about your pay. He asks how you killed it. You return to the issue of pay. The nobleman purses his lips.%SPEECH_ON%Alright. Servant! Get this obstinate beastslayer his coin.%SPEECH_OFF% | You drag the beastly remains into the yard and call up to %employer%. He comes to the window and looks down for a long time.%SPEECH_ON%Real or are you having a joke?%SPEECH_OFF%Sighing, you unsheathe your sword and plunge it into a large eyeball. With a pop it deflates and spews a yellow film all over the dirt. The nobleman whistles and clucks his tongue.%SPEECH_ON%By the old gods if you haven\'t done it! I will have a servant fetch your pay right this moment!%SPEECH_OFF% | You draft a donkey into service and have it help pull the slain abhorrence into town. It regards its crooked and unworldly luggage with a flick of an ear and a mute stare. %employer% meets you outside his domain. He stands aside the monstrous remains with his chin in the nook of a finger and thumb.%SPEECH_ON%Incredible. I can\'t imagine what it looked alive and fighting.%SPEECH_OFF%Nodding, you let the man know that there are no doubt more like it out there and he should come along the next time you take up a hunt. He shakes his head.%SPEECH_ON%I shall pass on that offer, sellsword. Here is your pay, and I order you to give that donkey back to its owner.%SPEECH_OFF%A farmer strides up wiping his forehead with a cloth.%SPEECH_ON%It\'s called a hinny and if you wanted to borrow the damned thing you could have just asked!%SPEECH_OFF% | You chop up the beastly remains and drag them piecemeal into %employer%\'s room. He puts a cloth to his nose as the cadaver piles up.%SPEECH_ON%So the myths are true. The beasts are real.%SPEECH_OFF%A few servants put the chunks back together, giving a misshapen image of the monstrosity which slides apart every time they let their hands go of the flesh. The nobleman nods and snaps his fingers.%SPEECH_ON%Get the mercenary his pay and fetch my advisers.%SPEECH_OFF% | One of %employer%\'s stands aside with a burin, ready to chisel away into the beastly remains. He grins widely and wildly.%SPEECH_ON%The family name can be down the bone, and used as a helve for an axe or sword.%SPEECH_OFF%You tell both the men they aren\'t touching a damned thing lest they pay you. The nobleman grins.%SPEECH_ON%No need to be testy, mercenary. I have a servant fetching your pay this moment. And if you dare raise a word in that tone again I\'ll have your tongue, slayer of monsters or no.%SPEECH_OFF%You demonstrate patience with your hand to your pommel and a countdown in your head. Thankfully for everyone involved, the servant arrives before it hits zero. | %employer% claps like a child at the demonstration of the beastly remains.%SPEECH_ON%The stories told of my doings will be great. I shall make helves and handles out of these bones, and tell stories of how I claimed the monstrous heads.%SPEECH_OFF%You nod. Sounds great. Not like the history books were going to record your name anyway. You ask for your pay. Nodding and not taking his eyes off the creature, %employer% snaps his fingers.%SPEECH_ON%Servants! Get the man his coin!%SPEECH_OFF%}",
			Image = "",
			List = [],
			ShowEmployer = true,
			Options = [
				{
					Text = "A successful hunt.",
					function getResult()
					{
						this.World.Assets.addBusinessReputation(this.Const.World.Assets.ReputationOnContractSuccess);
						this.World.Assets.addMoney(this.Contract.m.Payment.getOnCompletion());
						this.World.Assets.addMoney(this.Contract.m.Payment.getPerCount() * this.Flags.get("HeadsCollected"));
						this.World.FactionManager.getFaction(this.Contract.getFaction()).addPlayerRelation(this.Const.World.Assets.RelationNobleContractSuccess, "Hunted beasts around " + this.World.State.getRegion(this.Flags.get("Region")).Name);
						this.World.Contracts.finishActiveContract();
						return 0;
					}

				}
			],
			function start()
			{
				local money = this.Contract.m.Payment.getOnCompletion() + this.Contract.m.Payment.getPerCount() * this.Flags.get("HeadsCollected");
				this.List.push({
					id = 10,
					icon = "ui/icons/asset_money.png",
					text = "You gain [color=" + this.Const.UI.Color.PositiveEventValue + "]" + money + "[/color] Crowns"
				});
			}

		});
	}

	function onPrepareVariables( _vars )
	{
		local dest = this.World.State.getRegion(this.m.Flags.get("Region")).Center;
		local distance = this.World.State.getPlayer().getTile().getDistanceTo(dest);
		distance = this.Const.Strings.Distance[this.Math.min(this.Const.Strings.Distance.len() - 1, distance / 30.0 * (this.Const.Strings.Distance.len() - 1))];
		_vars.push([
			"killcount",
			this.m.Flags.get("HeadsCollected")
		]);
		_vars.push([
			"noblehousename",
			this.World.FactionManager.getFaction(this.m.Faction).getNameOnly()
		]);
		_vars.push([
			"worldmapregion",
			this.World.State.getRegion(this.m.Flags.get("Region")).Name
		]);
		_vars.push([
			"direction",
			this.Const.Strings.Direction8[this.World.State.getPlayer().getTile().getDirection8To(dest)]
		]);
		_vars.push([
			"distance",
			distance
		]);
		_vars.push([
			"regiontype",
			this.Const.Strings.TerrainShort[this.World.State.getRegion(this.m.Flags.get("Region")).Type]
		]);
	}

	function onClear()
	{
		if (this.m.IsActive)
		{
			this.m.Home.getSprite("selection").Visible = false;
		}
	}

	function onIsValid()
	{
		return true;
	}

	function onIsTileUsed( _tile )
	{
		return false;
	}

	function onSerialize( _out )
	{
		_out.writeU8(this.m.Size);
		this.contract.onSerialize(_out);
	}

	function onDeserialize( _in )
	{
		this.m.Size = _in.readU8();
		this.contract.onDeserialize(_in);
	}

});

