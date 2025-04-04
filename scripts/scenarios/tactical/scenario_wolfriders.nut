this.scenario_wolfriders <- this.inherit("scripts/scenarios/tactical/scenario_template", {
	m = {},
	function generate()
	{
		this.logDebug("ScenarioLineBattle::generate()");
		this.createStash();
		this.initMap();
		this.initEntities();
		this.initStash();
		this.m.Music = this.Const.Music.GoblinsTracks;
		this.Tactical.Entities.makeEnemiesKnownToAI();
		this.Tactical.getCamera().Level = 1;
		this.Tactical.CameraDirector.addMoveToTileEvent(0, this.Tactical.getTile(15, 14 - 15 / 2), 1, null, null, 0, 100);
	}

	function initMap()
	{
		local testMap = this.MapGen.get("tactical.tundra");
		local minX = testMap.getMinX();
		local minY = testMap.getMinY();
		this.Tactical.resizeScene(minX, minY);
		local roadTile = this.MapGen.get("tactical.tile.road");
		local _rect = {
			X = 0,
			Y = 0,
			W = minX,
			H = minY
		};
		local _properties;
		local roadX = _rect.W / 2;
		local roadY = 0;
		local roadEndY = _rect.H - 1;
		local roadYMoved = false;

		while (true)
		{
			roadTile.fill({
				X = roadX,
				Y = roadY,
				W = 1,
				H = 1,
				IsEmpty = false
			}, _properties);
			roadTile.fill({
				X = roadX + 1,
				Y = roadY,
				W = 1,
				H = 1,
				IsEmpty = false
			}, _properties);

			if (roadY == roadEndY)
			{
				break;
			}

			local r = this.Math.rand(0, 100);

			if (!roadYMoved || r < 50)
			{
				roadY = ++roadY;
				roadYMoved = true;
			}
			else if (r < 66 && roadX + 1 < _rect.H - 1)
			{
				roadX = ++roadX;
				roadYMoved = false;
			}
			else if (roadY - 1 >= 1)
			{
				roadX = --roadX;
				roadYMoved = false;
			}
		}

		testMap.fill({
			X = 0,
			Y = 0,
			W = minX,
			H = minY
		}, null);
	}

	function initEntities()
	{
		local entity;
		local items;

		for( local x = 10; x <= 16; x = ++x )
		{
			for( local y = 11; y <= 17; y = ++y )
			{
				local tile = this.Tactical.getTileSquare(x, y);
				tile.removeObject();
				tile.Level = 0;
			}
		}

		entity = this.spawnEntity("scripts/entity/tactical/objective/donkey", 13, 13, 14, 14);
		entity.setFaction(this.Const.Faction.PlayerAnimals);
		entity = this.spawnEntity("scripts/entity/tactical/player", 14, 14, 15, 15);
		this.World.getPlayerRoster().add(entity);
		entity.setName(this.getRandomPlayerName());
		entity.setScenarioValues();
		items = entity.getItems();
		items.equip(this.new("scripts/items/armor/padded_leather"));
		items.equip(this.new("scripts/items/helmets/kettle_hat"));
		items.equip(this.new("scripts/items/armor/padded_leather"));
		items.equip(this.new("scripts/items/weapons/longaxe"));
		entity = this.spawnEntity("scripts/entity/tactical/player", 13, 13, 12, 12);
		this.World.getPlayerRoster().add(entity);
		entity.setName(this.getRandomPlayerName());
		entity.setScenarioValues();
		items = entity.getItems();
		items.equip(this.new("scripts/items/armor/leather_tunic"));
		items.equip(this.new("scripts/items/weapons/pike"));
		items.equip(this.new("scripts/items/helmets/hood"));
		items.addToBag(this.new("scripts/items/weapons/dagger"));
		entity = this.spawnEntity("scripts/entity/tactical/player", 12, 12, 14, 14);
		this.World.getPlayerRoster().add(entity);
		entity.setName(this.getRandomPlayerName());
		entity.setScenarioValues();
		items = entity.getItems();
		items.equip(this.new("scripts/items/helmets/mouth_piece"));
		items.equip(this.new("scripts/items/armor/thick_tunic"));
		items.equip(this.new("scripts/items/weapons/hunting_bow"));
		items.equip(this.new("scripts/items/ammo/quiver_of_arrows"));
		items.addToBag(this.new("scripts/items/weapons/dagger"));
		entity = this.spawnEntity("scripts/entity/tactical/player", 13, 13, 15, 15);
		this.World.getPlayerRoster().add(entity);
		entity.setName(this.getRandomPlayerName());
		entity.setScenarioValues();
		items = entity.getItems();
		items.equip(this.new("scripts/items/helmets/aketon_cap"));
		items.equip(this.new("scripts/items/armor/gambeson"));
		items.equip(this.new("scripts/items/weapons/crossbow"));
		items.equip(this.new("scripts/items/ammo/quiver_of_bolts"));
		items.addToBag(this.new("scripts/items/weapons/dagger"));
		entity = this.spawnEntity("scripts/entity/tactical/player", 13, 13, 17, 17);
		this.World.getPlayerRoster().add(entity);
		entity.setName(this.getRandomPlayerName());
		entity.setScenarioValues();
		items = entity.getItems();
		items.equip(this.new("scripts/items/helmets/kettle_hat"));
		items.equip(this.new("scripts/items/armor/lamellar_harness"));
		items.equip(this.new("scripts/items/weapons/greatsword"));
		entity = this.spawnEntity("scripts/entity/tactical/player", 10, 10, 15, 15);
		this.World.getPlayerRoster().add(entity);
		entity.setName(this.getRandomPlayerName());
		entity.setScenarioValues();
		items = entity.getItems();
		items.equip(this.new("scripts/items/helmets/dented_nasal_helmet"));
		items.equip(this.new("scripts/items/armor/padded_leather"));
		items.equip(this.new("scripts/items/weapons/arming_sword"));
		items.equip(this.new("scripts/items/shields/wooden_shield"));
		entity = this.spawnEntity("scripts/entity/tactical/player", 11, 11, 13, 13);
		this.World.getPlayerRoster().add(entity);
		entity.setName(this.getRandomPlayerName());
		entity.setScenarioValues();
		items = entity.getItems();
		items.equip(this.new("scripts/items/helmets/nasal_helmet_with_rusty_mail"));
		items.equip(this.new("scripts/items/armor/mail_shirt"));
		items.equip(this.new("scripts/items/weapons/hand_axe"));
		items.equip(this.new("scripts/items/shields/wooden_shield"));
		entity = this.spawnEntity("scripts/entity/tactical/player", 11, 11, 16, 16);
		this.World.getPlayerRoster().add(entity);
		entity.setName(this.getRandomPlayerName());
		entity.setScenarioValues();
		items = entity.getItems();
		items.equip(this.new("scripts/items/helmets/closed_mail_coif"));
		items.equip(this.new("scripts/items/armor/mail_shirt"));
		items.equip(this.new("scripts/items/weapons/boar_spear"));
		items.equip(this.new("scripts/items/shields/wooden_shield"));
		entity = this.spawnEntity("scripts/entity/tactical/player", 15, 15, 16, 16);
		this.World.getPlayerRoster().add(entity);
		entity.setName(this.getRandomPlayerName());
		entity.setScenarioValues();
		items = entity.getItems();
		items.equip(this.new("scripts/items/helmets/flat_top_with_mail"));
		items.equip(this.new("scripts/items/armor/mail_shirt"));
		items.equip(this.new("scripts/items/weapons/warhammer"));
		items.equip(this.new("scripts/items/shields/named/named_full_metal_heater_shield"));
		entity = this.spawnEntity("scripts/entity/tactical/player", 16, 16, 15, 15);
		this.World.getPlayerRoster().add(entity);
		entity.setName(this.getRandomPlayerName());
		entity.setScenarioValues();
		items = entity.getItems();
		items.equip(this.new("scripts/items/helmets/witchhunter_hat"));
		items.equip(this.new("scripts/items/armor/ragged_surcoat"));
		items.equip(this.new("scripts/items/weapons/winged_mace"));
		entity = this.spawnEntity("scripts/entity/tactical/player", 15, 15, 13, 13);
		this.World.getPlayerRoster().add(entity);
		entity.setName(this.getRandomPlayerName());
		entity.setScenarioValues();
		items = entity.getItems();
		items.equip(this.new("scripts/items/helmets/mail_coif"));
		items.equip(this.new("scripts/items/armor/coat_of_plates"));
		items.equip(this.new("scripts/items/weapons/greatsword"));

		for( local i = 0; i < 10; i = ++i )
		{
			entity = this.spawnEnemy("scripts/entity/tactical/enemies/goblin_wolfrider");
			entity.setFaction(this.Const.Faction.Goblins);
			entity.assignRandomEquipment();
		}
	}

	function spawnEntity( _script, _minX = 4, _maxX = 28, _minY = 4, _maxY = 28 )
	{
		local x = 0;
		local y = 0;
		local n = 0;

		while (1)
		{
			x = this.Math.rand(_minX, _maxX);
			y = this.Math.rand(_minY, _maxY) - x / 2;

			if (!this.Tactical.getTile(x, y).IsEmpty)
			{
				this.Tactical.getTile(x, y).removeObject();
			}

			if (this.Tactical.getTile(x, y).IsEmpty)
			{
				break;
			}
		}

		return this.Tactical.spawnEntity(_script, x, y);
	}

	function spawnEnemy( _script, _minX = 4, _maxX = 28, _minY = 4, _maxY = 28 )
	{
		local x = 0;
		local y = 0;
		local n = 0;

		while (1)
		{
			x = this.Math.rand(_minX, _maxX);
			y = this.Math.rand(_minY, _maxY);

			if (x >= 8 && x <= 18 && y >= 9 && y <= 18)
			{
				continue;
			}

			y = y - x / 2;

			if (!this.Tactical.getTile(x, y).IsEmpty)
			{
				this.Tactical.getTile(x, y).removeObject();
			}

			if (this.Tactical.getTile(x, y).IsEmpty)
			{
				break;
			}
		}

		return this.Tactical.spawnEntity(_script, x, y);
	}

	function initStash()
	{
		this.Stash.clear();
		this.Stash.resize(117);
		this.Stash.setLocked(false);
		this.Stash.add(this.new("scripts/items/weapons/dagger"));
		this.Stash.add(this.new("scripts/items/weapons/scramasax"));
		this.Stash.add(this.new("scripts/items/weapons/javelin"));
		this.Stash.add(this.new("scripts/items/weapons/javelin"));
		this.Stash.add(this.new("scripts/items/weapons/throwing_axe"));
		this.Stash.add(this.new("scripts/items/weapons/throwing_axe"));
		this.Stash.add(this.new("scripts/items/weapons/hatchet"));
		this.Stash.add(this.new("scripts/items/weapons/hatchet"));
		this.Stash.add(this.new("scripts/items/weapons/hand_axe"));
		this.Stash.add(this.new("scripts/items/weapons/hand_axe"));
		this.Stash.add(this.new("scripts/items/weapons/warhammer"));
		this.Stash.add(this.new("scripts/items/weapons/warhammer"));
		this.Stash.add(this.new("scripts/items/weapons/shortsword"));
		this.Stash.add(this.new("scripts/items/weapons/shortsword"));
		this.Stash.add(this.new("scripts/items/weapons/falchion"));
		this.Stash.add(this.new("scripts/items/weapons/falchion"));
		this.Stash.add(this.new("scripts/items/weapons/arming_sword"));
		this.Stash.add(this.new("scripts/items/weapons/arming_sword"));
		this.Stash.add(this.new("scripts/items/weapons/military_cleaver"));
		this.Stash.add(this.new("scripts/items/weapons/military_cleaver"));
		this.Stash.add(this.new("scripts/items/weapons/greatsword"));
		this.Stash.add(this.new("scripts/items/weapons/greatsword"));
		this.Stash.add(this.new("scripts/items/weapons/greatsword"));
		this.Stash.add(this.new("scripts/items/weapons/greatsword"));
		this.Stash.add(this.new("scripts/items/weapons/greataxe"));
		this.Stash.add(this.new("scripts/items/weapons/greataxe"));
		this.Stash.add(this.new("scripts/items/weapons/greataxe"));
		this.Stash.add(this.new("scripts/items/weapons/billhook"));
		this.Stash.add(this.new("scripts/items/weapons/billhook"));
		this.Stash.add(this.new("scripts/items/weapons/billhook"));
		this.Stash.add(this.new("scripts/items/weapons/militia_spear"));
		this.Stash.add(this.new("scripts/items/weapons/militia_spear"));
		this.Stash.add(this.new("scripts/items/weapons/boar_spear"));
		this.Stash.add(this.new("scripts/items/weapons/boar_spear"));
		this.Stash.add(this.new("scripts/items/weapons/boar_spear"));
		this.Stash.add(this.new("scripts/items/weapons/bludgeon"));
		this.Stash.add(this.new("scripts/items/weapons/bludgeon"));
		this.Stash.add(this.new("scripts/items/weapons/winged_mace"));
		this.Stash.add(this.new("scripts/items/weapons/winged_mace"));
		this.Stash.add(this.new("scripts/items/weapons/winged_mace"));
		this.Stash.add(this.new("scripts/items/weapons/winged_mace"));
		this.Stash.add(this.new("scripts/items/weapons/flail"));
		this.Stash.add(this.new("scripts/items/weapons/flail"));
		this.Stash.add(this.new("scripts/items/weapons/flail"));
		this.Stash.add(this.new("scripts/items/weapons/short_bow"));
		this.Stash.add(this.new("scripts/items/weapons/short_bow"));
		this.Stash.add(this.new("scripts/items/weapons/hunting_bow"));
		this.Stash.add(this.new("scripts/items/weapons/hunting_bow"));
		this.Stash.add(this.new("scripts/items/weapons/crossbow"));
		this.Stash.add(this.new("scripts/items/weapons/crossbow"));
		this.Stash.add(this.new("scripts/items/weapons/crossbow"));
		this.Stash.add(this.new("scripts/items/shields/wooden_shield"));
		this.Stash.add(this.new("scripts/items/shields/wooden_shield"));
		this.Stash.add(this.new("scripts/items/shields/kite_shield"));
		this.Stash.add(this.new("scripts/items/shields/kite_shield"));
		this.Stash.add(this.new("scripts/items/shields/kite_shield"));
		this.Stash.add(this.new("scripts/items/helmets/hood"));
		this.Stash.add(this.new("scripts/items/helmets/aketon_cap"));
		this.Stash.add(this.new("scripts/items/helmets/full_aketon_cap"));
		this.Stash.add(this.new("scripts/items/helmets/nasal_helmet"));
		this.Stash.add(this.new("scripts/items/helmets/padded_nasal_helmet"));
		this.Stash.add(this.new("scripts/items/helmets/nasal_helmet_with_mail"));
		this.Stash.add(this.new("scripts/items/helmets/mail_coif"));
		this.Stash.add(this.new("scripts/items/helmets/closed_mail_coif"));
		this.Stash.add(this.new("scripts/items/helmets/reinforced_mail_coif"));
		this.Stash.add(this.new("scripts/items/helmets/kettle_hat"));
		this.Stash.add(this.new("scripts/items/helmets/padded_kettle_hat"));
		this.Stash.add(this.new("scripts/items/helmets/kettle_hat_with_mail"));
		this.Stash.add(this.new("scripts/items/helmets/flat_top_helmet"));
		this.Stash.add(this.new("scripts/items/helmets/flat_top_with_mail"));
		this.Stash.add(this.new("scripts/items/helmets/full_helm"));
		this.Stash.add(this.new("scripts/items/helmets/full_helm"));
		this.Stash.add(this.new("scripts/items/armor/padded_surcoat"));
		this.Stash.add(this.new("scripts/items/armor/gambeson"));
		this.Stash.add(this.new("scripts/items/armor/gambeson"));
		this.Stash.add(this.new("scripts/items/armor/padded_leather"));
		this.Stash.add(this.new("scripts/items/armor/padded_leather"));
		this.Stash.add(this.new("scripts/items/armor/mail_shirt"));
		this.Stash.add(this.new("scripts/items/armor/mail_shirt"));
		this.Stash.add(this.new("scripts/items/armor/mail_shirt"));
		this.Stash.add(this.new("scripts/items/armor/lamellar_harness"));
		this.Stash.add(this.new("scripts/items/armor/coat_of_plates"));
		this.Stash.add(this.new("scripts/items/ammo/quiver_of_arrows"));
		this.Stash.add(this.new("scripts/items/ammo/quiver_of_arrows"));
		this.Stash.add(this.new("scripts/items/ammo/quiver_of_arrows"));
		this.Stash.add(this.new("scripts/items/ammo/quiver_of_arrows"));
		this.Stash.add(this.new("scripts/items/ammo/quiver_of_bolts"));
		this.Stash.add(this.new("scripts/items/ammo/quiver_of_bolts"));
		this.Stash.add(this.new("scripts/items/ammo/quiver_of_bolts"));
		this.Stash.add(this.new("scripts/items/accessory/wardog_item"));
		this.Stash.add(this.new("scripts/items/accessory/wardog_item"));
		this.Stash.add(this.new("scripts/items/accessory/wardog_item"));
		this.Stash.add(this.new("scripts/items/accessory/wardog_item"));
		this.Stash.add(this.new("scripts/items/accessory/wardog_item"));
		this.Stash.add(this.new("scripts/items/accessory/wardog_item"));
	}

});

