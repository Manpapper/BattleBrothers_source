this.blueprint <- {
	m = {
		ID = "",
		PreviewCraftable = null,
		PreviewComponents = [],
		Sounds = this.Const.Sound.CraftingGeneral,
		Cost = 0,
		TimesCrafted = 0
	},
	function isValid()
	{
		return true;
	}

	function getID()
	{
		return this.m.ID;
	}

	function getName()
	{
		return this.m.PreviewCraftable.getName();
	}

	function getDescription()
	{
		return this.m.PreviewCraftable.getDescription();
	}

	function getIcon()
	{
		return this.m.PreviewCraftable.getIcon();
	}

	function getIconLarge()
	{
		return this.m.PreviewCraftable.getIconLarge();
	}

	function getCost()
	{
		return this.Math.ceil(this.m.Cost * this.World.Assets.m.TaxidermistPriceMult);
	}

	function getSounds()
	{
		return this.m.Sounds;
	}

	function getTooltip()
	{
		return this.m.PreviewCraftable.getTooltip();
	}

	function getTooltipForComponent( _idx )
	{
		return this.m.PreviewComponents[_idx].Instance.getTooltip();
	}

	function create()
	{
	}

	function init( _comps )
	{
		foreach( i in _comps )
		{
			local c = this.new(i.Script);
			this.m.PreviewComponents.push({
				Num = i.Num,
				Instance = c
			});
		}
	}

	function reset()
	{
		this.onReset();
	}

	function isCraftable()
	{
		local items = this.World.Assets.getStash().getItems();

		foreach( c in this.m.PreviewComponents )
		{
			local num = 0;

			foreach( item in items )
			{
				if (item != null && item.getID() == c.Instance.getID())
				{
					num = ++num;

					if (num >= c.Num)
					{
						break;
					}
				}
			}

			if (num < c.Num)
			{
				return false;
			}
		}

		return true;
	}

	function isQualified()
	{
		if (this.m.TimesCrafted >= 1)
		{
			return true;
		}

		return this.isCraftable();
	}

	function getUIData()
	{
		local items = this.World.Assets.getStash().getItems();
		local ret = {
			ID = this.getID(),
			Name = this.getName(),
			Description = this.getDescription(),
			ImagePath = this.getIcon(),
			LargeImagePath = this.getIconLarge() != null ? this.getIconLarge() : this.getIcon(),
			Ingredients = this.getIngredients(),
			Cost = this.getCost(),
			IsCraftable = this.isCraftable()
		};
		return ret;
	}

	function getIngredients()
	{
		local ret = [];
		local items = this.World.Assets.getStash().getItems();

		foreach( i, c in this.m.PreviewComponents )
		{
			local num = 0;

			foreach( item in items )
			{
				if (item != null && item.getID() == c.Instance.getID())
				{
					num = ++num;

					if (num >= c.Num)
					{
						break;
					}
				}
			}

			for( local j = 1; j <= c.Num; j = ++j )
			{
				ret.push({
					InstanceID = i,
					ImagePath = c.Instance.getIcon(),
					IsMissing = j > num
				});
			}
		}

		return ret;
	}

	function craft()
	{
		if (!this.isQualified())
		{
			return;
		}

		this.updateAchievement("IMadeThis", 1, 1);
		local stash = this.World.Assets.getStash();
		local hasAlchemist = this.World.Retinue.hasFollower("follower.alchemist");

		foreach( c in this.m.PreviewComponents )
		{
			for( local j = 0; j < c.Num; j = ++j )
			{
				local item = stash.getItemByID(c.Instance.getID());

				if (!hasAlchemist || item.getMagicNumber() > 25)
				{
					stash.remove(item);
				}
				else
				{
					item.setMagicNumber(this.Math.rand(1, 100));
				}
			}
		}

		++this.m.TimesCrafted;
		this.onCraft(stash);
	}

	function onCraft( _stash )
	{
	}

	function onReset()
	{
	}

	function onSerialize( _out )
	{
		_out.writeU32(this.m.TimesCrafted);
	}

	function onDeserialize( _in )
	{
		this.m.TimesCrafted = _in.readU32();
	}

};

