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
    @balance += amount
  end

  def withdraw=(amount)
    @balance -= amount
  end

  def gain_interest
    @balance = balance*(1+(interest_rate.to_f/100))
  end
end

puts "What is Brandon's Initial Balance ($) ?"
a=gets.chomp.to_i
puts "What is Brandon's Interest Rate (%) ?"
b=gets.chomp.to_i
brandon = BankAccount.new(a, b)

brandon.deposit=(40)
brandon.deposit=(80)
brandon.withdraw=(45)
brandon.gain_interest
puts "Your balance is #{brandon.balance}$"
