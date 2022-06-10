require_relative "alternate_capitals"

RSpec.describe AlternateCapitals do
  describe "#alternate!" do
    context "hello" do
      it "returns 'hElLo" do
        transformer = described_class.new
        expect(transformer.alternate!("hello")).to eq("hElLo")
      end
    end
    context "hello, how are your porcupines today?" do
      it "returns 'hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?'" do
        transformer = described_class.new
        expect(transformer.alternate!("hello, how are your porcupines today?")).to eq("hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?")
      end
    end
    context "" do
      it "returns ''" do
        transformer = described_class.new
        expect(transformer.alternate!("")).to eq("")
      end
    end
  end
end
