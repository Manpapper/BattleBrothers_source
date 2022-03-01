this.player_party <- this.inherit("scripts/entity/world/party", {
	m = {
		LastFireTime = 0
	},
	function updateStrength()
	{
		this.m.Strength = 0.0;
		local roster = this.World.getPlayerRoster().getAll();

		if (roster.len() > this.World.Assets.getBrothersScaleMax())
		{
			roster.sort(this.onLevelCompare);
		}

		if (roster.len() < this.World.Assets.getBrothersScaleMin())
		{
			this.m.Strength += 10.0 * (this.World.Assets.getBrothersScaleMin() - roster.len());
		}

		foreach( i, bro in roster )
		{
			if (i >= this.World.Assets.getBrothersScaleMax())
			{
				break;
			}

			this.m.Strength += 10.0 + (bro.getLevel() - 1) * 2.0;
		}
	}

	function onLevelCompare( _bro1, _bro2 )
	{
		if (_bro1.getLevel() > _bro2.getLevel())
		{
			return -1;
		}
		else if (_bro1.getLevel() < _bro2.getLevel())
		{
			return 1;
		}

		return 0;
	}

	function getStrength()
	{
		return this.m.Strength;
	}

	function setCamping( _c )
	{
		if (_c)
		{
			this.getSprite("body").setBrush("world_player_camp_01");
			this.getSprite("banner").Visible = false;
			this.getSprite("lighting").Visible = true;
		}
		else
		{
			this.World.Assets.updateLook();
			this.getSprite("banner").Visible = true;
			this.getSprite("lighting").Visible = false;
		}
	}

	function spawnFire()
	{
		local smoke = this.Const.World.CampSmokeParticles;

		for( local i = 0; i < smoke.len(); i = ++i )
		{
			this.World.spawnParticleEffect(smoke[i].Brushes, smoke[i].Delay, smoke[i].Quantity, smoke[i].LifeTime, smoke[i].SpawnRate, smoke[i].Stages, this.createVec(this.getPos().X, this.getPos().Y - 30), -200 + this.Const.World.ZLevel.Particles, true);
		}

		local fire = this.Const.World.CampFireParticles;

		for( local i = 0; i < fire.len(); i = ++i )
		{
			this.World.spawnParticleEffect(fire[i].Brushes, fire[i].Delay, fire[i].Quantity, fire[i].LifeTime, fire[i].SpawnRate, fire[i].Stages, this.createVec(this.getPos().X, this.getPos().Y - 30), -200 + this.Const.World.ZLevel.Particles - 3, true);
		}
	}

	function getVisionRadius()
	{
		return this.m.VisionRadius * this.World.Assets.m.VisionRadiusMult * this.World.getGlobalVisibilityMult() * this.Const.World.TerrainTypeVisionRadiusMult[this.getTile().Type] * (this.World.Assets.isCamping() ? 0.75 : 1.0);
	}

	function getVisibilityMult()
	{
		return this.World.Assets.isCamping() ? this.m.VisibilityMult * (this.World.getTime().IsDaytime ? 2.0 : 4.0) : this.m.VisibilityMult;
	}

	function create()
	{
		this.m.IsPlayer = true;
		this.m.IsAttackable = true;
		this.m.IsLeavingFootprints = false;
		this.party.create();
		this.m.BaseMovementSpeed = 105;
	}

	function onUpdate()
	{
		this.party.onUpdate();
		this.World.setPlayerPos(this.getPos());
		this.World.setPlayerVisionRadius(this.getVisionRadius());

		if (this.World.Assets.isCamping())
		{
			local lighting = this.getSprite("lighting");

			if (lighting.IsFadingDone)
			{
				if (lighting.Alpha == 0 && this.World.getTime().TimeOfDay >= 4 && this.World.getTime().TimeOfDay <= 7)
				{
					lighting.Color = this.createColor("ffffff00");
					lighting.fadeIn(4000);
				}
				else if (lighting.Alpha != 0 && this.World.getTime().TimeOfDay >= 0 && this.World.getTime().TimeOfDay <= 3)
				{
					lighting.fadeOut(2000);
				}
			}

			if (this.Time.getRealTimeF() - this.m.LastFireTime >= 10.0)
			{
				this.spawnFire();
				this.m.LastFireTime = this.Time.getRealTimeF();
			}
		}
	}

	function onContact()
	{
	}

	function onInit()
	{
		this.setFaction(this.Const.FactionType.Player);
		this.party.onInit();
		this.m.VisionRadius = this.Const.World.Settings.Vision;
		this.getSprite("base").setBrush("world_base_01");
		this.getSprite("banner").setBrush(this.World.Assets.getBanner());
		this.getSprite("body").setBrush("figure_player_01");
		local lighting = this.addSprite("lighting");
		this.setSpriteColorization("lighting", false);
		lighting.setBrush("world_player_camp_01_fire");
		lighting.Visible = false;
		lighting.Alpha = 0;
		lighting.IgnoreAmbientColor = true;
		local zoom_banner = this.addSprite("zoom_banner");
		zoom_banner.setBrush(this.World.Assets.getBanner());
		zoom_banner.Alpha = 0;
		this.setSpriteScaling("zoom_banner", false);
	}

	function onFinish()
	{
		this.party.onFinish();
	}

	function onSerialize( _out )
	{
		this.party.onSerialize(_out);
	}

	function onDeserialize( _in )
	{
		this.party.onDeserialize(_in);
		this.getSprite("lighting").Color = this.createColor("ffffff00");
		this.m.LastUpdateTime = this.Time.getVirtualTimeF();
	}

});

