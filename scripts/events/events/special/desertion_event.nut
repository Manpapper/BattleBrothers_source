this.desertion_event <- this.inherit("scripts/events/event", {
	m = {
		Deserter = null,
		Other = null
	},
	function setDeserter( _d )
	{
		this.m.Deserter = _d;
		this.m.Other = null;
		local brothers = this.World.getPlayerRoster().getAll();

		if (brothers.len() > 1)
		{
			do
			{
				this.m.Other = brothers[this.Math.rand(0, brothers.len() - 1)];
			}
			while (this.m.Other == null || this.m.Other.getID() == this.m.Deserter.getID());
		}
		else
		{
			this.m.Other = this.m.Deserter;
		}
	}

	function create()
	{
		this.m.ID = "event.desertion";
		this.m.Title = "Along the way...";
		this.m.IsSpecial = true;
		this.m.Screens.push({
			ID = "A",
			Text = "[img]gfx/ui/events/event_64.png[/img]{%desertedbrother% has deserted the %companyname%. When the days seem endless and the road longer, a different sort of quality is challenged in men. You\'ve discovered that even those who are fearless in battle sometimes don\'t have the stamina for the hardships of the mercenary life. Then there are men who are both cowards and layabouts. You can only hope you don\'t waste too much coin on that sort before finding them out.\n\n%otherbrother% steps up to you.%SPEECH_ON%Never mind about %desertedbrother%, sir. Never liked the look of him. Without the %companyname% to take care of him, I wager in a fortnight\'s time he\'ll be swinging from the gibbet.%SPEECH_OFF% | Bellyaching is a time honored tradition among mercenaries, and among people in general, but you were quickly growing tired of %desertedbrother%\'s endless complaints.\n\nIf the rations were stale, the beer too bitter, or the meat tough, he was the first to let you know about it, repeatedly. He would say the same regarding sore feet, bad weather, brittle shields, chafing armor, the caravan moving too slow, the caravan moving too fast, blunt blades, getting first watch, moldy bread, low pay, general boredom, and night owls keeping him awake after dark. This isn\'t the complete list of his grievances, but they are all you can recall at the moment.\n\n%desertedbrother%\'s complaints are unfortunately the regular fare of the traveling mercenary troop, and mostly unavoidable. So you\'re not exactly surpised when you find %desertedbrother% has left for a less cumbersome life. | %desertedbrother% has not been putting his heart into racing towards certain death and crushing the enemy before him for several days now. Having missed him around camp today, you are told by the other men that he went to find firewood. Since this job doesn\'t typically take twelve hours, it seems %desertedbrother% has finally decided to take his discontent on the road and try his luck elsewhere. You doubt you\'ll see him again. | In your recent travels, the company has unfortunately faced a series of mishaps. This has hit %desertedbrother% harder than the others. He\'s been sleeping late, starting fights, and acting insubordinate. That is, when you can find him at all. None of this endears him to you or his comrades, and it didn\'t help matters when %otherbrother% chucked %desertedbrother%\'s bedroll into the shallow ditch the brothers had been using for a latrine.\n\nIt is usually best to let the men vent their unhappiness, and since the company has been having a run of raw luck you\'ve been tolerant. When this morning you found him gone, it wasn\'t much of a surprise. %desertedbrother% has deserted the %companyname%. | You are troubled to learn that %desertedbrother% seems to have disappeared during the night. After questioning the others and ensuring he hadn\'t simply stepped behind a nearby boulder to relieve his bowels, you call out a search. Thinking that perhaps %desertedbrother% had been taken by treachery, kidnapped for ransom, or fallen afoul of some beast, you and the brothers spent several hours searching the area and calling his name.\n\nThen %otherbrother% finally suggests that %desertedbrother% is not missing at all, but has deserted you all.%SPEECH_ON%He\'s been griping about the company lately, but I guess he hid it from you, sir, so he\'d have a chance to slip away unseen.%SPEECH_OFF%Restraining the urge to give the bearer of bad news a solid box about the ears, you ask why he didn\'t come forward earlier, but the brother has no answer. | You never figured %desertedbrother% for the type to desert, but when the dawn comes and he\'s nowhere to be seen you realize you were being naive. On every march he had been falling farther and farther behind, and every time you gave the order to break camp, he was last to gather his gear and start walking. His equipment had also begun to look ratty. Though he kept his thoughts to himself, in retrospect his sour looks and disinterest in his comrades made it obvious he wasn\'t happy with the direction the company has been heading in lately.\n\nYou sound out the other men and discover discontent is on the rise generally. Keep the men well fed and watered like any beast, and make sure they get paid on time, and hopefully %desertedbrother% will be the last to flee in the night. | You do not know if it was the low pay, the threat of dismemberment, the forced marches in icy rain, the foul language and coarse food, the abuse at the hands of his brothers, the small children throwing stones, the cold wind or the sleepless nights, but %desertedbrother% has grown more and more unhappy this last while until apparently he gave up on the mercenary life altogether.%SPEECH_ON%Don\'t know what he has to complain about. Everything seems right normal to me.%SPEECH_OFF%%otherbrother% says when hearing about the whole thing. %desertedbrother% has chosen the open road over the %companyname%. At least he had the decency to tell you in person that he decided to leave - although, thinking about it, perhaps it was just to collect his remaining pay in person. | Lately, %desertedbrother% had begun to take long walks in the evening when the day\'s work was done. Though his habit of wandering off alone wasn\'t exactly safe, you could think of no reason to stop him when he wasn\'t needed in camp. However, the more hardships the company faced, the longer these walks became, until one morning %desertedbrother% did not return at all.\n\n%desertedbrother% has deserted the %companyname%. It\'s probably for the best. | %desertedbrother% has been especially moody of late, spending all his off hours fondling an old throwing knife, a blade in such poor condition it more closely resembled a bit of scrap iron than a proper weapon. He spent the previous evening throwing it at the bole of a dead tree, each time rising with a groan to retrieve it and walking back several yards to squat down and throw it again, well into the night.\n\nClearly he was unhappy with the recent setbacks the company has faced, at this morning he mustered the courage to enter your tent and explain that he\'ll be leaving the company to seek his fortune elsewhere.}",
			Image = "",
			List = [],
			Characters = [],
			Options = [
				{
					Text = "{I can hardly force him to remain with the company... | Bad news, indeed. | A momentary setback. | I can not let something like this happen again.}",
					function getResult( _event )
					{
						if (this.World.Assets.getEconomicDifficulty() != this.Const.Difficulty.Hard)
						{
							_event.m.Deserter.getItems().transferToStash(this.World.Assets.getStash());
						}

						_event.m.Deserter.getSkills().onDeath(this.Const.FatalityType.None);
						this.World.getPlayerRoster().remove(_event.m.Deserter);
						_event.m.Deserter = null;
						_event.m.Other = null;
						return 0;
					}

				}
			],
			function start( _event )
			{
				this.Characters.push(_event.m.Deserter.getImagePath());
				this.List.push({
					id = 13,
					icon = "ui/icons/kills.png",
					text = _event.m.Deserter.getName() + " leaves the " + this.World.Assets.getName()
				});
				this.updateAchievement("Deserter", 1, 1);
			}

		});
	}

	function onUpdateScore()
	{
		return;
	}

	function onPrepareVariables( _vars )
	{
		_vars.push([
			"desertedbrother",
			this.m.Deserter.getName()
		]);
		_vars.push([
			"otherbrother",
			this.m.Other.getName()
		]);
	}

	function onClear()
	{
		this.m.Deserter = null;
	}

});

