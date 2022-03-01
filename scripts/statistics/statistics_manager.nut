this.statistics_manager <- {
	m = {
		Flags = null,
		News = [],
		Fallen = []
	},
	function getFlags()
	{
		return this.m.Flags;
	}

	function getFallen()
	{
		return this.m.Fallen;
	}

	function getNews()
	{
		return this.m.News;
	}

	function isNewsReady()
	{
		return this.m.News.len() != 0;
	}

	function hasNews( _type )
	{
		foreach( i, n in this.m.News )
		{
			if (n.Type == _type)
			{
				return true;
			}
		}

		return false;
	}

	function popNews( _type )
	{
		foreach( i, n in this.m.News )
		{
			if (n.Type == _type)
			{
				this.m.News.remove(i);

				if (this.m.News.len() != 0)
				{
					this.World.Events.resetLastEventTime();
				}

				return n;
			}
		}
	}

	function addNews( _type, _news )
	{
		_news.Type <- _type;
		_news.Time <- this.Time.getVirtualTimeF();

		if (this.m.News.len() >= 10)
		{
			this.m.News.remove(0);
		}

		this.m.News.push(_news);
		this.World.Events.resetLastEventTime();
	}

	function clearNews()
	{
		this.m.News = [];
	}

	function createNews()
	{
		return this.new("scripts/tools/tag_collection");
	}

	function addFallen( _fallen )
	{
		this.m.Fallen.insert(0, _fallen);
	}

	function create()
	{
		this.m.Flags = this.new("scripts/tools/tag_collection");
		this.m.Flags.set("GreaterEvilsDefeated", 0);
		this.m.Flags.set("ItemsCrafted", 0);
		this.m.Flags.set("LastLocationDestroyedName", "");
		this.m.Flags.set("LastLocationDestroyedFaction", 0);
		this.m.Flags.set("LastLocationDestroyedForContract", false);
		this.m.Flags.set("LastEnemiesDefeatedCount", 0);
		this.m.Flags.set("LastCombatResult", 0);
		this.m.Flags.set("LastCombatFaction", 0);
		this.m.Flags.set("LastCombatKills", 0);
		this.m.Flags.set("LastCombatSavedCaravan", false);
		this.m.Flags.set("LastCombatSavedCaravanProduce", "");
		this.m.Flags.set("LastCombatWasOngoingBattle", false);
	}

	function clear()
	{
		this.m.News = [];
	}

	function onSerialize( _out )
	{
		this.m.Flags.onSerialize(_out);
		_out.writeU8(this.m.News.len());

		foreach( n in this.m.News )
		{
			_out.writeString(n.Type);
			_out.writeF32(n.Time);
			n.onSerialize(_out);
		}

		_out.writeU32(this.m.Fallen.len());

		foreach( f in this.m.Fallen )
		{
			_out.writeString(f.Name);
			_out.writeU32(f.Time);
			_out.writeU32(f.TimeWithCompany);
			_out.writeU32(f.Kills);
			_out.writeU32(f.Battles);
			_out.writeString(f.KilledBy);
			_out.writeBool(f.Expendable);
		}
	}

	function onDeserialize( _in )
	{
		if (_in.getMetaData().getVersion() <= 53)
		{
			this.m.Flags.set("LastLocationDestroyedName", _in.readString());
			this.m.Flags.set("LastLocationDestroyedFaction", _in.readU8());
			this.m.Flags.set("LastLocationDestroyedForContract", _in.readBool());
			this.m.Flags.set("LastEnemiesDefeatedCount", _in.readU16());
			this.m.Flags.set("LastCombatResult", _in.readU8());

			if (_in.getMetaData().getVersion() >= 42)
			{
				this.m.Flags.set("LastCombatFaction", _in.readU8());
			}
			else
			{
				this.m.Flags.set("LastCombatFaction", 0);
			}

			this.m.Flags.set("LastCombatSavedCaravan", false);
			this.m.Flags.set("LastCombatSavedCaravanProduce", "");
		}

		this.m.Flags.onDeserialize(_in);
		local numNews = _in.readU8();
		this.m.News.resize(numNews);

		for( local i = 0; i < numNews; i = ++i )
		{
			local news = this.new("scripts/tools/tag_collection");
			news.Type <- _in.readString();
			news.Time <- _in.readF32();
			news.onDeserialize(_in);
			this.m.News[i] = news;
		}

		local numFallen = _in.readU32();
		this.m.Fallen.resize(numFallen);

		for( local i = 0; i < numFallen; i = ++i )
		{
			local f = {};
			f.Name <- _in.readString();
			f.Time <- _in.readU32();
			f.TimeWithCompany <- _in.readU32();
			f.Kills <- _in.readU32();
			f.Battles <- _in.readU32();
			f.KilledBy <- _in.readString();
			f.Expendable <- _in.readBool();
			this.m.Fallen[i] = f;
		}
	}

};

