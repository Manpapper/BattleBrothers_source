this.fermented_unhold_heart_item <- this.inherit("scripts/items/supplies/food_item", {
	m = {},
	function create()
	{
		this.food_item.create();
		this.m.ID = "supplies.fermented_unhold_heart";
		this.m.Name = "Fermented Unhold Heart";
		this.m.Description = "Provisions. Once a delicacy for barbarian kings of the north who wished to embolden their virility, fermented unhold heart tastes distinctively awful.";
		this.m.Icon = "supplies/inventory_provisions_19.png";
		this.m.Value = 150;
		this.m.GoodForDays = 20;
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

