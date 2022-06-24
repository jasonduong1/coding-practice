require_relative "fibonacci_numbers"

RSpec describe FibonacciNumbers do
  context "9th number of the squence" do
    it "returns 21" do
      expect(described_class.new.place(9)).to eq(21)
    end
  end
end
