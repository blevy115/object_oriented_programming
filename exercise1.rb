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

def choice(account, n)
  if n == "deposit"
    puts "How much ($)"
    d = gets.chomp.to_i
    account.deposit=(d)
  elsif n == "withdraw"
    puts "How much ($)"
    w = gets.chomp.to_i
    account.withdraw=(w)
  elsif n == "add interest"
    account.gain_interest
  end
end

def continue(account)
  puts "Are you done?"
  continue = gets.chomp
  if continue == "no"
    puts "Do you want to deposit, withdraw or add interest"
    n = gets.chomp
    choice(account, n)
    continue(account)
    else
  end
end

puts "Do you want to deposit, withdraw or add interest"
n = gets.chomp
choice(brandon, n)
continue(brandon)

puts "Your balance is #{brandon.balance}$"
