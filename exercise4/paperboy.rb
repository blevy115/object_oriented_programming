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
    puts "I'm #{name}, I've delivered #{experience} papers and I've earned $#{earnings} so far"
  end
end


tommy = Paperboy.new("Tommy")

puts tommy.quota # => 50
puts tommy.deliver(101, 160) # => 17.5
puts tommy.earnings #=> 17.5
tommy.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"

puts tommy.quota # => 80
puts tommy.deliver(1, 75) # => 16.75
puts tommy.earnings #=> 34.25
tommy.report # => "I'm Tommy, I've been delivered 135 papers and I've earned $34.25 so far!"
