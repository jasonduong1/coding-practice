class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
  end

  def cheap
  end

  def out_of_stock
  end

  def stock_for_item(name)
  end

  def total_stock
    raise "Implement the BoutiqueInventory#total_stock method"
  end

  private

  attr_reader :items
end
