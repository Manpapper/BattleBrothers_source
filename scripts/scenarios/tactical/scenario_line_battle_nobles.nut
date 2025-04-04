this.scenario_line_battle_nobles <- this.inherit("scripts/scenarios/tactical/scenario_template", {
	m = {},
	function generate()
	{
		this.logDebug("ScenarioLineBattle::generate()");
		this.createStash();
		this.initMap();
		this.initEntities();
		this.initStash();
		this.Tactical.Entities.makeEnemiesKnownToAI();
		this.m.Music = this.Const.Music.NobleTracks;
		this.Tactical.getCamera().Level = 1;
		this.Tactical.CameraDirector.addMoveToTileEvent(0, this.Tactical.getTile(15, 14 - 15 / 2), 1, null, null, 0, 100);
	}

	function initMap()
	{
		local testMap = this.MapGen.get("tactical.combat_basics");
		local minX = testMap.getMinX();
		local minY = testMap.getMinY();
		this.Tactical.resizeScene(minX, minY);
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

		for( local x = 10; x < 20; x = ++x )
		{
			for( local y = 10; y < 20; y = ++y )
			{
				local tile = this.Tactical.getTile(x, y);
				tile.removeObject();
			}
		}

		entity = this.spawnEntity("scripts/entity/tactical/player", 12, 12, 15, 15);
		this.World.getPlayerRoster().add(entity);
		entity.setName(this.getRandomPlayerName());
		entity.setScenarioValues();
		items = entity.getItems();
		items.equip(this.new("scripts/items/helmets/kettle_hat"));
		items.equip(this.new("scripts/items/armor/padded_leather"));
		items.equip(this.new("scripts/items/weapons/billhook"));
		entity.getSkills().add(this.new("scripts/skills/actives/rally_the_troops"));
		entity = this.spawnEntity("scripts/entity/tactical/player", 12, 12, 13, 13);
		this.World.getPlayerRoster().add(entity);
		entity.setName(this.getRandomPlayerName());
		entity.setScenarioValues();
		items = entity.getItems();
		items.equip(this.new("scripts/items/armor/leather_tunic"));
		items.equip(this.new("scripts/items/weapons/billhook"));
		items.equip(this.new("scripts/items/helmets/hood"));
		items.addToBag(this.new("scripts/items/weapons/dagger"));
		entity.getSkills().add(this.new("scripts/skills/actives/rally_the_troops"));
		entity = this.spawnEntity("scripts/entity/tactical/player", 11, 11, 14, 14);
		this.World.getPlayerRoster().add(entity);
		entity.setName(this.getRandomPlayerName());
		entity.setScenarioValues();
		items = entity.getItems();
		items.equip(this.new("scripts/items/armor/thick_tunic"));
		items.equip(this.new("scripts/items/weapons/hunting_bow"));
		items.equip(this.new("scripts/items/ammo/quiver_of_arrows"));
		items.addToBag(this.new("scripts/items/weapons/dagger"));
		entity.getSkills().add(this.new("scripts/skills/actives/rally_the_troops"));
		entity = this.spawnEntity("scripts/entity/tactical/player", 11, 11, 15, 15);
		this.World.getPlayerRoster().add(entity);
		entity.setName(this.getRandomPlayerName());
		entity.setScenarioValues();
		items = entity.getItems();
		items.equip(this.new("scripts/items/helmets/aketon_cap"));
		items.equip(this.new("scripts/items/armor/gambeson"));
		items.equip(this.new("scripts/items/weapons/crossbow"));
		items.equip(this.new("scripts/items/ammo/quiver_of_bolts"));
		items.addToBag(this.new("scripts/items/weapons/dagger"));
		entity.getSkills().add(this.new("scripts/skills/actives/rally_the_troops"));
		entity = this.spawnEntity("scripts/entity/tactical/player", 13, 13, 11, 11);
		this.World.getPlayerRoster().add(entity);
		entity.setName(this.getRandomPlayerName());
		entity.setScenarioValues();
		items = entity.getItems();
		items.equip(this.new("scripts/items/helmets/named/sallet_green_helmet"));
		items.equip(this.new("scripts/items/armor/lamellar_harness"));
		items.equip(this.new("scripts/items/weapons/greatsword"));
		entity.getSkills().add(this.new("scripts/skills/actives/rally_the_troops"));
		entity = this.spawnEntity("scripts/entity/tactical/player", 13, 13, 13, 13);
		this.World.getPlayerRoster().add(entity);
		entity.setName(this.getRandomPlayerName());
		entity.setScenarioValues();
		items = entity.getItems();
		items.equip(this.new("scripts/items/armor/named/blue_studded_mail_armor"));
		items.equip(this.new("scripts/items/weapons/hand_axe"));
		items.equip(this.new("scripts/items/shields/wooden_shield"));
		entity.getSkills().add(this.new("scripts/skills/actives/rally_the_troops"));
		entity = this.spawnEntity("scripts/entity/tactical/player", 13, 13, 14, 14);
		this.World.getPlayerRoster().add(entity);
		entity.setName(this.getRandomPlayerName());
		entity.setScenarioValues();
		items = entity.getItems();
		items.equip(this.new("scripts/items/helmets/named/wolf_helmet"));
		items.equip(this.new("scripts/items/armor/named/black_leather_armor"));
		items.equip(this.new("scripts/items/weapons/boar_spear"));
		items.equip(this.new("scripts/items/shields/wooden_shield"));
		entity.getSkills().add(this.new("scripts/skills/actives/rally_the_troops"));
		entity = this.spawnEntity("scripts/entity/tactical/player", 13, 13, 16, 16);
		this.World.getPlayerRoster().add(entity);
		entity.setName(this.getRandomPlayerName());
		entity.setScenarioValues();
		items = entity.getItems();
		items.equip(this.new("scripts/items/helmets/named/norse_helmet"));
		items.equip(this.new("scripts/items/armor/padded_surcoat"));
		items.equip(this.new("scripts/items/weapons/winged_mace"));
		items.equip(this.new("scripts/items/shields/wooden_shield"));
		entity.getSkills().add(this.new("scripts/skills/actives/rally_the_troops"));
		entity = this.spawnEntity("scripts/entity/tactical/player", 13, 13, 17, 17);
		this.World.getPlayerRoster().add(entity);
		entity.setName(this.getRandomPlayerName());
		entity.setScenarioValues();
		items = entity.getItems();
		items.equip(this.new("scripts/items/helmets/mail_coif"));
		items.equip(this.new("scripts/items/armor/coat_of_plates"));
		items.equip(this.new("scripts/items/weapons/greatsword"));
		entity.getSkills().add(this.new("scripts/skills/actives/rally_the_troops"));
		entity = this.spawnEntity("scripts/entity/tactical/humans/standard_bearer", 12, 12, 16, 16);
		entity.setFaction(this.Const.Faction.NobleHouse);
		entity.assignRandomEquipment();
		entity = this.spawnEntity("scripts/entity/tactical/humans/footman", 12, 12, 12, 12);
		entity.setFaction(this.Const.Faction.NobleHouse);
		entity.assignRandomEquipment();
		entity = this.spawnEntity("scripts/entity/tactical/humans/knight", 11, 11, 12, 12);
		entity.setFaction(this.Const.Faction.NobleHouse);
		entity.assignRandomEquipment();
		entity = this.spawnEntity("scripts/entity/tactical/humans/footman", 13, 13, 15, 15);
		entity.setFaction(this.Const.Faction.NobleHouse);
		entity.assignRandomEquipment();
		entity = this.spawnEntity("scripts/entity/tactical/humans/footman", 13, 13, 12, 12);
		entity.setFaction(this.Const.Faction.NobleHouse);
		entity.assignRandomEquipment();
		local x;
		x = 19;
		entity = this.spawnEntity("scripts/entity/tactical/humans/footman", x, x, 11, 11);
		entity.setFaction(this.Const.Faction.Orcs);
		entity.assignRandomEquipment();
		entity = this.spawnEntity("scripts/entity/tactical/humans/footman", x, x, 12, 12);
		entity.setFaction(this.Const.Faction.Orcs);
		entity.assignRandomEquipment();
		entity = this.spawnEntity("scripts/entity/tactical/humans/footman", x, x, 13, 13);
		entity.setFaction(this.Const.Faction.Orcs);
		entity.assignRandomEquipment();
		entity = this.spawnEntity("scripts/entity/tactical/humans/knight", x, x, 14, 14);
		entity.setFaction(this.Const.Faction.Orcs);
		entity.assignRandomEquipment();
		entity = this.spawnEntity("scripts/entity/tactical/humans/footman", x, x, 15, 15);
		entity.setFaction(this.Const.Faction.Orcs);
		entity.assignRandomEquipment();
		entity = this.spawnEntity("scripts/entity/tactical/humans/footman", x, x, 16, 16);
		entity.setFaction(this.Const.Faction.Orcs);
		entity.assignRandomEquipment();
		entity = this.spawnEntity("scripts/entity/tactical/humans/footman", x, x, 17, 17);
		entity.setFaction(this.Const.Faction.Orcs);
		entity.assignRandomEquipment();
		x = x + 1;
		entity = this.spawnEntity("scripts/entity/tactical/humans/arbalester", x, x, 12, 12);
		entity.setFaction(this.Const.Faction.Orcs);
		entity.assignRandomEquipment();
		entity = this.spawnEntity("scripts/entity/tactical/humans/standard_bearer", x, x, 13, 13);
		entity.setFaction(this.Const.Faction.Orcs);
		entity.assignRandomEquipment();
		entity = this.spawnEntity("scripts/entity/tactical/humans/arbalester", x, x, 15, 15);
		entity.setFaction(this.Const.Faction.Orcs);
		entity.assignRandomEquipment();
		entity = this.spawnEntity("scripts/entity/tactical/humans/footman", x, x, 16, 16);
		entity.setFaction(this.Const.Faction.Orcs);
		entity.assignRandomEquipment();
		entity = this.spawnEntity("scripts/entity/tactical/humans/arbalester", x, x, 17, 17);
		entity.setFaction(this.Const.Faction.Orcs);
		entity.assignRandomEquipment();
		x = x + 1;
		entity = this.spawnEntity("scripts/entity/tactical/humans/standard_bearer", x, x, 16, 16);
		entity.setFaction(this.Const.Faction.Orcs);
		entity.assignRandomEquipment();
		entity = this.spawnEntity("scripts/entity/tactical/humans/arbalester", x, x, 14, 14);
		entity.setFaction(this.Const.Faction.Orcs);
		entity.assignRandomEquipment();
	}

	function spawnEntity( _script, _minX = 10, _maxX = 28, _minY = 3, _maxY = 28 )
	{
		local x = 0;
		local y = 0;
		local n = 0;

		while (1)
		{
			x = this.Math.rand(_minX, _maxX);
			y = this.Math.rand(_minY, _maxY) - x / 2;

			if (this.Tactical.getTile(x, y).IsOccupiedByActor)
			{
				continue;
			}

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
	}

});

