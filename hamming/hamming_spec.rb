require_relative "hamming"

RSpec.describe Hamming do
  context "same strings" do
    it "returns 0" do
      expect(described_class.new.difference("ABCDEFG", "ABCDEFG")).to eq(0)
    end
  end
  context "strings with two differences" do
    it "returns 2" do
      expect(described_class.new.difference("ABCXEOG", "ABCDEFG")).to eq(2)
    end
  end
  context "two empy strings" do
    it "returns 0" do
      expect(described_class.new.difference("", "")).to eq(0)
    end
  end
end
