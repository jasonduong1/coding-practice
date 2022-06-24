require_relative "fibonacci_numbers"

RSpec.describe FibonacciNumbers do
  context "9th number of the sequence" do
    it "returns 21" do
      expect(described_class.new.place(9)).to eq(21)
    end
  end
  context "1st number of the sequence" do
    it "returns 0" do
      expect(described_class.new.place(1)).to eq(0)
    end
  end
  context "10th number of the sequence" do
    it "returns 34" do
      expect(described_class.new.place(10)).to eq(34)
    end
  end
end
