module SavingsAccount
  def self.interest_rate(balance)
    if balance < 0
      interest_rate = -3.213
    elsif balance < 1000
      interest_rate = 0.5
    elsif balance < 5000
      interest_rate = 1.621
    else
      interest_rate = 2.475
    end
  end

  def self.annual_balance_update(balance)
    interest_rate = self.interest_rate(balance)
    annual_balance = (interest_rate * 0.01 + 1) * balance
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    raise "Please implement the SavingsAccount.years_before_desired_balance method"
  end
end
