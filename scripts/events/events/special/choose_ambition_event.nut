this.choose_ambition_event <- this.inherit("scripts/events/event", {
	m = {},
	function create()
	{
		this.m.ID = "event.choose_ambition";
		this.m.Title = "During camp...";
		this.m.HasBigButtons = true;
		this.m.IsSpecial = true;
		this.m.Screens.push({
			ID = "A",
			Text = "[img]gfx/ui/events/event_58.png[/img]{A fresh, cool breeze is blowing today, and you feel like it\'s a good time for the %companyname% to start something new. You call the men to gather round...\n\nWhat do you tell them? | You feel good today, ready to lead the %companyname% through any challenge to come. You gather the men around, kicking %randombrother% to his feet and telling %randombrother2% to finish scraping away the hairs on his neck later. When their muttering has subsided, you start to address them.\n\nWhat do you tell the men the company will do? | As is customary, you assemble the men to explain the company\'s next steps.%SPEECH_ON%Brothers, the %companyname% must show the world we are forged of a hotter fire than other mercenary bands. As our reputation grows, so will the influx of crowns to our coffers. Let us forge a path to greatness!%SPEECH_OFF%What do you tell the men the company will do? | As the company takes a break, you decide to address the men.%SPEECH_ON%Brothers, I want everyone to know the %companyname% are not just cutthroats and errand boys, but skilled fighters of the first order. Word of our deeds must spread, so that merchants and noblemen are begging us to take their contracts.%SPEECH_OFF%What do you tell the men the company will set out to do? | Sitting and jesting with the men while they check their kit, hone their blades and mend their armor, your mind wanders off to thinking about new ideas for improving the company and its reputation across the lands.\n\nWhat is your conclusion and what do you tell the men? | It falls to you, the commander, to see that the company succeeds not just on the battlefield, but also in fame and riches. And so you spend the evenings pondering about a bigger plan for the %companyname% in your tent while the men talk and laugh around the fire. You\'re never going to become a legend simply by chasing brigands and doing small-time contracts.\n\nWhat do you proclaim to the men the company will set out to do?}",
			Image = "",
			List = [],
			Characters = [],
			Options = [],
			Banner = "",
			function start( _event )
			{
				this.Banner = "ui/banners/" + this.World.Assets.getBanner() + "s.png";
				local selection = this.World.Ambitions.getSelection();
				this.Options = [];

				foreach( i, s in selection )
				{
					this.Options.push(_event.createOption(s));
				}
			}

		});
	}

	function createOption( _s )
	{
		return {
			Text = _s.getButtonText(),
			Tooltip = _s.getButtonTooltip(),
			Icon = "ui/icons/ambition.png",
			function getResult( _event )
			{
				this.World.Ambitions.setAmbition(_s);
				return 0;
			}

		};
	}

	function onUpdateScore()
	{
		return;
	}

	function onPrepareVariables( _vars )
	{
	}

	function onClear()
	{
	}

});

