require_relative "savings_account"

RSpec.describe SavingsAccount do
  describe "self.interest_rate" do
    context 200.75 do
      it "returns 0.5" do
        expect(SavingsAccount.interest_rate(200.75).to eq(0.5))
      end
    end
  end
end
