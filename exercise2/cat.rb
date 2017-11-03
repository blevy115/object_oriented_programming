class Cat

  def initialize (name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def name
    @name
  end

  def preferred_food
    @preferred_food
  end

  def meal_time
    @meal_time
  end

  def eats_at
    if meal_time >= 13
      puts "#{meal_time-12}PM"
    elsif meal_time == 12
      puts "#{meal_time}PM"
    elsif meal_time < 12 && @meal_time > 0
      puts "#{meal_time}AM"
    elsif meal_time == 0
      puts "#{meal_time+12}AM"
    end
  end
end

nami=Cat.new("Nami", "Oranges", 12)
robin=Cat.new("Robin", "Fish", 20)

puts robin.eats_at
