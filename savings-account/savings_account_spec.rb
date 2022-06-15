require_relative "savings_account"

RSpec.describe SavingsAccount do
  describe "self.interest_rate" do
    context 200.75 do
      it "returns 0.5" do
        expect(SavingsAccount.interest_rate(200.75).to_s).to eq "0.5"
      end
    end
    context -1 do
      it "returns -3.213" do
        expect(SavingsAccount.interest_rate(-1).to_s).to eq "-3.213"
      end
    end
    context 4000 do
      it "returns 1.621" do
        expect(SavingsAccount.interest_rate(4000).to_s).to eq "1.621"
      end
    end
    context 10000 do
      it "returns -3.213" do
        expect(SavingsAccount.interest_rate(10000).to_s).to eq "2.475"
      end
    end
  end
  describe "self.annual_balance_update" do
    context 200.75 do
      it "returns 201.75375" do
        expect(SavingsAccount.annual_balance_update(200.75)).to be_within(0.00001).of(201.75375)
      end
    end
  end
end
