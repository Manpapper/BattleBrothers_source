this.new_campaign_menu_module <- this.inherit("scripts/ui/screens/ui_module", {
	m = {
		OnStartButtonPressedListener = null,
		OnCancelButtonPressedListener = null
	},
	function setOnStartButtonPressedListener( _listener )
	{
		this.m.OnStartButtonPressedListener = _listener;
	}

	function setOnCancelButtonPressedListener( _listener )
	{
		this.m.OnCancelButtonPressedListener = _listener;
	}

	function clearEventListener()
	{
		this.m.OnStartButtonPressedListener = null;
		this.m.OnCancelButtonPressedListener = null;
	}

	function create()
	{
		this.m.ID = "NewCampaignModule";
		this.ui_module.create();
	}

	function destroy()
	{
		this.clearEventListener();
		this.ui_module.destroy();
	}

	function show()
	{
		if (!this.isVisible() && !this.isAnimating())
		{
			this.m.JSHandle.asyncCall("show", null);
		}
	}

	function hide()
	{
		if (this.isVisible() && !this.isAnimating())
		{
			this.m.JSHandle.asyncCall("hide", null);
		}
	}

	function setBanners( _banners )
	{
		this.m.JSHandle.asyncCall("setBanners", _banners);
	}

	function setStartingScenarios( _scenarios )
	{
		this.m.JSHandle.asyncCall("setStartingScenarios", _scenarios);
	}

	function setCrusadeCampaignAvailable( _available )
	{
		this.m.JSHandle.asyncCall("setCrusadeCampaignVisible", _available);
	}

	function onStartButtonPressed( _settings )
	{
		if (this.m.OnStartButtonPressedListener != null)
		{
			this.m.OnStartButtonPressedListener(this.parseSettingsFromJS(_settings));
		}
	}

	function onCancelButtonPressed()
	{
		if (this.m.OnCancelButtonPressedListener != null)
		{
			this.m.OnCancelButtonPressedListener();
		}
	}

	function parseSettingsFromJS( _settings )
	{
		return {
			Name = _settings.companyName,
			Banner = _settings.banner,
			Difficulty = _settings.combatDifficulty,
			EconomicDifficulty = _settings.economicDifficulty,
			BudgetDifficulty = _settings.budgetDifficulty,
			Ironman = _settings.ironman,
			ExplorationMode = _settings.explorationDifficulty,
			GreaterEvil = _settings.lateGameCrisis,
			PermanentDestruction = _settings.permanentDestruction,
			Seed = _settings.seed,
			StartingScenario = _settings.origin
		};
	}

});

