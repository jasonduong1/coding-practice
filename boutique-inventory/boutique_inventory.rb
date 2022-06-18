class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    if @items == []
      []
    else
      @items.map { |item| item[:name] }.sort
    end
  end

  def cheap
    cheap = []
    @items.each { |item| cheap << item if item[:price] < 30 }
    cheap
  end

  def out_of_stock
    out_of_stock = []
    @items.each { |item| out_of_stock << item if item[:quantity_by_size] == {} }
    out_of_stock
  end

  def stock_for_item(name)
    item = @items.find { |item| item[:name] == name }
    item[:quantity_by_size]
  end

  def total_stock
    total_stock = 0
    @items.each do |item|
      item[:quantity_by_size].each_value { |count| total_stock += count }
    end
    total_stock
  end

  private

  attr_reader :items
end
