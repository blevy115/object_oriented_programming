class Paperboy


  def initialize (name)
    @name = name
    @experience = 0.0
    @quota = 50.0
    @earnings = 0.0
    @total_total_house = 0
    @single_earnings = 0
  end

  def name
    @name
  end

  def experience
    @experience
  end

  def earnings
    @earnings
  end

  def quota
    @quota += @experience/2
  end

  def deliver(start_address, end_address)
    total_house = (start_address.to_i - end_address.to_i).abs + 1
    @experience += total_house
    if total_house > @quota
      @single_earnings = (@quota.to_f*0.25 + (total_house - @quota.to_f)*0.5)
      @earnings += @single_earnings
    else
      @single_earnings = (total_house.to_f*0.25)

    end
    if total_house < @quota
      @single_earnings -= 2
      @earnings += @single_earnings
    end
    return @single_earnings


  end

  def report
    puts "I'm #{name}, I've delivered #{experience} papers and I've earned $#{earnings} so far."
  end
end

puts "What is your Paperboys name?"
name = gets.chomp

boy = Paperboy.new(name)
i = 0
until i == "yes"
  puts "What is the first house on your route today?"
  a = gets.chomp.to_i
  puts "What is the last house on your route today?"
  b = gets.chomp.to_i
  boy.deliver(a, b)
  puts "Your day earnings are #{boy.earnings}$"
  puts "Do you want to see your report?"
  answer = gets.chomp
  if answer == "yes"
    boy.report
  end
  puts "Are you done delivering?"
  i = gets.chomp
end

puts "Thanks for serving your local paper company, you made #{boy.earnings}$."
#
# puts boy.quota
# puts boy.deliver(1, 75)
# puts boy.earnings
# boy.report
