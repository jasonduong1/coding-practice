require_relative "boutique_inventory"

RSpec.describe BoutiqueInventory do
  describe "no item names" do
    context "[]" do
      it "returns []" do
        expect(BoutiqueInventory.new([]).item_names).to eq []
      end
    end
  end
  describe "one item names" do
    context "items = [
      { price: 65.00, name: 'Red Brown Dress', quantity_by_size: {} }
    ]" do
      it "returns 'Red Brown Dress'" do
        expect(BoutiqueInventory.new([{ price: 65.00, name: "Red Brown Dress", quantity_by_size: {} }]).item_names).to eq(["Red Brown Dress"])
      end
    end
  end
  describe "three item names" do
    context "items = [
      { price: 65.00, name: " "Red Brown Dress" ", quantity_by_size: { s: 1 } },
      { price: 50.00, name: " "Red Short Skirt" ", quantity_by_size: { m: 1 } },
      { price: 29.99, name: " "Black Short Skirt" ", quantity_by_size: {} }
    ]" do
      it "returns three items in order" do
        expect(BoutiqueInventory.new([{ price: 65.00, name: "Red Brown Dress", quantity_by_size: { s: 1 } },
                                      { price: 50.00, name: "Red Short Skirt", quantity_by_size: { m: 1 } },
                                      { price: 29.99, name: "Black Short Skirt", quantity_by_size: {} }]).item_names).to eq(["Black Short Skirt", "Red Brown Dress", "Red Short Skirt"])
      end
    end
  end
  describe "cheap for no items" do
    context "[]" do
      it "returns []" do
        expect(BoutiqueInventory.new([]).cheap).to eq []
      end
    end
  end
  describe "cheap for no cheap items" do
    it "returns []" do
      expect(BoutiqueInventory.new([{ price: 30.00, name: "Shoes", quantity_by_size: {} }, { price: 65.00, name: "Coat", quantity_by_size: {} }]).cheap).to eq []
    end
  end
  describe "one cheap item" do
    it "returns [handkerchief]" do
      expect(BoutiqueInventory.new([{ price: 30.00, name: "Shoes", quantity_by_size: {} }, { price: 65.00, name: "Coat", quantity_by_size: {} }, { price: 19.99, name: "Handkerchief", quantity_by_size: {} }]).cheap).to eq [{ price: 19.99, name: "Handkerchief", quantity_by_size: {} }]
    end
  end
  describe "two cheap item" do
    it "returns [handkerchief, notebook]" do
      expect(BoutiqueInventory.new([{ price: 30.00, name: "Shoes", quantity_by_size: {} }, { price: 65.00, name: "Coat", quantity_by_size: {} }, { price: 19.99, name: "Handkerchief", quantity_by_size: {} }, { price: 25.49, name: "Notebook", quantity_by_size: {} }]).cheap).to eq [{ price: 19.99, name: "Handkerchief", quantity_by_size: {} }, { price: 25.49, name: "Notebook", quantity_by_size: {} }]
    end
  end
  describe "out of stock for no items" do
    context "[]" do
      it "returns []" do
        expect(BoutiqueInventory.new([]).out_of_stock).to eq []
      end
    end
  end
  describe "out of stock for all items" do
    context "items with no stock" do
      it "returns []" do
        expect(BoutiqueInventory.new([{ price: 30.00, name: "Shoes", quantity_by_size: {} }, { price: 65.00, name: "Coat", quantity_by_size: {} }]).out_of_stock).to eq [{ price: 30.00, name: "Shoes", quantity_by_size: {} }, { price: 65.00, name: "Coat", quantity_by_size: {} }]
      end
    end
  end
  describe "out of stock for some items" do
    context "some items have stock" do
      it "returns items with no stock" do
        expect(BoutiqueInventory.new([{ price: 30.00, name: "Shoes", quantity_by_size: { s: 1, xl: 4 } }, { price: 65.00, name: "Coat", quantity_by_size: {} }, { price: 19.99, name: "Handkerchief", quantity_by_size: {} }]).out_of_stock).to eq [{ price: 65.00, name: "Coat", quantity_by_size: {} }, { price: 19.99, name: "Handkerchief", quantity_by_size: {} }]
      end
    end
  end
  describe "stock out of stock" do
    context "two out of stock items" do
      it "returns []" do
        expect(BoutiqueInventory.new([{ price: 30.00, name: "Shoes", quantity_by_size: {} }, { price: 65.00, name: "Coat", quantity_by_size: {} }]).cheap).to eq []
      end
    end
  end
  describe "stock for item for some in stock" do
    context "three items two with stock" do
      it "returns stock for designated item" do
        expect(BoutiqueInventory.new([{ price: 30.00, name: "Shoes", quantity_by_size: { s: 1, xl: 4 } }, { price: 65.00, name: "Coat", quantity_by_size: { s: 2 } }, { price: 19.99, name: "Handkerchief", quantity_by_size: {} }]).stock_for_item("Shoes")).to eq({ s: 1, xl: 4 })
      end
    end
  end
  describe "total stock for no items" do
    context "[]" do
      it "returns []" do
        expect(BoutiqueInventory.new([]).total_stock).to eq 0
      end
    end
  end
  describe "total stock for no stock" do
    context "two items with no stock" do
      it "returns 0" do
        expect(BoutiqueInventory.new([{ price: 30.00, name: "Shoes", quantity_by_size: {} }, { price: 65.00, name: "Coat", quantity_by_size: {} }]).total_stock).to eq 0
      end
    end
  end
  describe "total stock for some items" do
    context "three items, one with stock of different sizes" do
      it "returns 5" do
        expect(BoutiqueInventory.new([{ price: 30.00, name: "Shoes", quantity_by_size: { s: 1, xl: 4 } }, { price: 65.00, name: "Coat", quantity_by_size: {} }, { price: 19.99, name: "Handkerchief", quantity_by_size: {} }]).total_stock).to eq 5
      end
    end
  end
end
