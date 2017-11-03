class BankAccount

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def balance
    @balance
  end

  def interest_rate
    @interest_rate
  end

  def deposit=(amount)
    @balance = @balance + amount
  end

  def withdraw=(amount)
    @balance = @balance - amount
  end
end

brandon = BankAccount.new(0, 15)

brandon.deposit=(40)
brandon.deposit=(80)
brandon.withdraw=(45)
puts brandon.balance
