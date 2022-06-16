require_relative "bird_count"

RSpec.describe BirdCount do
  describe "last_week" do
    it "returns [0, 2, 5, 3, 7, 8, 4]" do
      expect(BirdCount.last_week).to eq [0, 2, 5, 3, 7, 8, 4]
    end
  end
  describe "yesterday for disappointing week" do
    context [0, 0, 1, 0, 0, 1, 0] do
      it "returns 1" do
        expect(BirdCount.new([0, 0, 1, 0, 0, 1, 0]).yesterday).to eq 1
      end
    end
  end
  describe "yesterday for busy week" do
    context [8, 8, 9, 5, 4, 7, 10] do
      it "returns 7" do
        expect(BirdCount.new([8, 8, 9, 5, 4, 7, 10]).yesterday).to eq 7
      end
    end
  end
  describe "total for disappointing week" do
    context [0, 0, 1, 0, 0, 1, 0] do
      it "returns 2" do
        expect(BirdCount.new([0, 0, 1, 0, 0, 1, 0]).total).to eq 2
      end
    end
  end
  describe "total for busy week" do
    context [5, 9, 12, 6, 8, 8, 17] do
      it "returns 65" do
        expect(BirdCount.new([5, 9, 12, 6, 8, 8, 17]).total).to eq 65
      end
    end
  end
  describe "busy days for dissapointing week" do
    context [1, 1, 1, 0, 0, 0, 0] do
      it "returns 0" do
        expect(BirdCount.new([1, 1, 1, 0, 0, 0, 0]).busy_days).to eq 0
      end
    end
  end
  describe "busy days for busy week" do
    context [4, 9, 5, 7, 8, 8, 2] do
      it "returns 5" do
        expect(BirdCount.new([4, 9, 5, 7, 8, 8, 2]).busy_days).to eq 5
      end
    end
  end
  describe "has days without birds" do
    context [5, 5, 4, 0, 7, 6] do
      it "returns true" do
        expect(BirdCount.new([5, 5, 4, 0, 7, 6]).day_without_birds?).to eq true
      end
    end
  end
  describe "has no days without birds" do
    context [4, 5, 9, 10, 9, 4, 3] do
      it "returns true" do
        expect(BirdCount.new([4, 5, 9, 10, 9, 4, 3]).day_without_birds?).to eq false
      end
    end
  end
end
