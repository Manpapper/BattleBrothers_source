this.negotiator_follower <- this.inherit("scripts/retinue/follower", {
	m = {},
	function create()
	{
		this.follower.create();
		this.m.ID = "follower.negotiator";
		this.m.Name = "The Negotiator";
		this.m.Description = "The Negotiator is home to noble courts and fancy halls, and not used to travelling with a band of sellswords with muddy boots, but he is an expert on negotiating for the best prices and conditions when it comes to contracts.";
		this.m.Image = "ui/campfire/negotiator_01";
		this.m.Cost = 3000;
		this.m.Effects = [
			"Allows for more rounds of contract negotiations with your potential employers before they abort, and without any hit to relations"
		];
		this.m.Requirements = [
			{
				IsSatisfied = false,
				Text = ""
			}
		];
	}

	function onUpdate()
	{
		this.World.Assets.m.NegotiationAnnoyanceMult = 0.5;
		this.World.Assets.m.AdvancePaymentCap = 0.75;
	}

	function onNewDay()
	{
		this.onUpdate();
	}

	function onEvaluate()
	{
		this.m.Requirements[0].Text = "Completed " + this.Math.min(15, this.World.Contracts.getContractsFinished()) + "/15 contracts";

		if (this.World.Contracts.getContractsFinished() >= 15)
		{
			this.m.Requirements[0].IsSatisfied = true;
		}
	}

});

