this.cured_rations_item <- this.inherit("scripts/items/supplies/food_item", {
	m = {},
	function create()
	{
		this.food_item.create();
		this.m.ID = "supplies.cured_rations";
		this.m.Name = "Masterfully Cured Rations";
		this.m.Description = "Provisions. These rations consist of assorted, well cured meats and vegetables that are sealed in small boxes. The ideal provision to take with you on long journeys and expeditions.";
		this.m.Icon = "supplies/inventory_provisions_16.png";
		this.m.Value = 150;
		this.m.GoodForDays = 16;
	}

	function getBuyPrice()
	{
		if (this.m.IsSold)
		{
			return this.getSellPrice();
		}

		if (("State" in this.World) && this.World.State != null && this.World.State.getCurrentTown() != null)
		{
			return this.Math.max(this.getSellPrice(), this.Math.ceil(this.getValue() * this.getBuyPriceMult() * this.getPriceMult() * this.World.State.getCurrentTown().getFoodPriceMult() * this.World.State.getCurrentTown().getBuyPriceMult() * this.Const.World.Assets.BuyPriceNotProducedHere));
		}

		return this.item.getBuyPrice();
	}

	function getSellPrice()
	{
		if (this.m.IsBought)
		{
			return this.getBuyPrice();
		}

		if (("State" in this.World) && this.World.State != null && this.World.State.getCurrentTown() != null)
		{
			return this.Math.floor(this.getValue() * this.getSellPriceMult() * this.World.State.getCurrentTown().getFoodPriceMult() * this.World.State.getCurrentTown().getSellPriceMult() * this.Const.World.Assets.SellPriceNotProducedHere);
		}

		return this.item.getSellPrice();
	}

});

