require_relative "add_two_numbers"

RSpec.describe AddTwoNumbers do
  it "returns twonumber" do
    add_two_numbers = described_class.new
    expect(described_class.new.add!([2, 4, 3], [5, 6, 4])).to eq([7, 0, 8])
  end
end
