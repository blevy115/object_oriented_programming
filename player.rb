class Player

  def initialize (name)
    @name = name
    @gold_coins = 0
    # @gold_coins = gold_coins
    @health_points = 10
    # @health_points = health_points
    @lives = 5
  end

  def name
    @name
  end

  def gold_coins
     @gold_coins
  end

  def health_points
     @health_points
  end

  def lives
     @lives
  end

  def level_up
    @lives += 1
    puts "Your lives have increased by 1"
  end

  def collect_treasure
    @gold_coins += 1
    if gold_coins % 10 == 0
      puts "You have leveled up"
      level_up
      @gold_coins = 0
    end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def do_battle (damage)
    @health_points -= damage
    puts "You took #{damage} damage"
    if @health_points < 1
      @lives -= 1
      puts "You lost a life"
      @health_points = 10
      if @lives == 0
        puts "No more lives, game restarts"
        restart
      end
    end
  end
end

def play (name, action)
  if action == "level up"
    name.level_up
  elsif action == "collect treasure"
    name.collect_treasure
  elsif action == "do battle"
    puts "How much damage?"
    damage = gets.chomp.to_i
    name.do_battle(damage)
  end
  puts "Anything else?"
  next_choice = gets.chomp
  if next_choice == "yes"
    choice(name, name.gold_coins, name.health_points, name.lives)
  else
    puts "Good game"
  end
end

def choice (name, gold_coins, health_points, lives)
  puts "Your stats are #{gold_coins} gold coins, #{health_points} health points and #{lives} lives"
  puts "What should #{name.name} do, collect treasure or do battle"
  action = gets.chomp
  play(name, action)
end

puts "What is your players name?"
name = gets.chomp
name = Player.new(name)
choice(name, name.gold_coins, name.health_points, name.lives)
