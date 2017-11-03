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
      return "#{meal_time-12}PM"
    elsif meal_time == 12
      return "#{meal_time}PM"
    elsif meal_time < 12 && meal_time > 0
      return "#{meal_time}AM"
    elsif meal_time == 0
      return "#{meal_time+12}AM"
    end
  end

  def meow
    puts "My name is #{name} and i eat #{preferred_food} at #{eats_at}."
  end
end

nami=Cat.new("Nami", "Oranges", 12)
robin=Cat.new("Robin", "Fish", 20)

puts robin.meow
