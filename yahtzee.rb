# Select Number of players
# Players set name
# Players roll starting with player 1
  # if the player still has unmarked values on their card, the player chooses which dice to keep (select dice number above the die)
  # player rolls 2nd time with non kept dice. chooses which dice to keep (the kept dice from prev roll must be selected again)
  # player rolls 3rd time, then chooses where to make mark (numbered rows) if the score is zero it will prompt you to confirm to put zero.
  # changes to next player and continues the loop.
# Grand Scores output.
# Winner announced.
# Play again?

require 'pry'

class Player
  attr_accessor :name

  def initialize(player_number)
    @name = "Player #{player_number}"
  end

  def get_name
    loop do
      puts "What is your name?"
      name = gets.chomp

      unless name.empty?
        return name
      end

      puts "You need to enter at least one character."
    end
  end

  def start_turn(cup)

  end

  def spaces_empty?
    true
  end
end

class YahtzeeGame
  attr_accessor :card, :cup, :players

  def initialize
    @card = YahtzeeCard.new
    @cup = YahtzeeCup.new
    @players = []
  end

  def prompt_num_players
    loop do
      puts "How many people are playing today?"
      @num_players = gets.chomp.to_i

      break if @num_players > 0
      puts "There has to be at least 1 player"
    end
  end

  def create_players
    1.upto(@num_players) do |player_number|
      @players << Player.new(player_number)
    end
  end

  def set_names
    players.each do |player|
      loop do
        puts "#{player.name}, what is your name?"
        name = gets.chomp

        unless name.empty?
          player.name = name
          break
        end

        puts "Your name must be at least 1 character."
      end
    end
  end

  def players_take_turns
    loop do
      players.each do |player|
        player.start_turn(cup)

        break unless player.spaces_empty?
      end
    end
  end

  def play
    prompt_num_players
    create_players
    set_names
    players_take_turns
  end
end

class YahtzeeCard
  attr_accessor :upper_section, :lower_section, :grand_total

  def initialize
    @upper_section = UpperSection.new
    @lower_section = LowerSection.new
    @grand_total = 0
  end
end

class YahtzeeCup
  attr_accessor :dice

  def initialize
    @dice = 5.times.with_object({}) { |num, arr| arr[num + 1] = Dice.new}
  end

  def throw_dice(*dice)

  end
end

class LowerSection < YahtzeeCard
  def initialize

  end
end

class UpperSection < YahtzeeCard
  def initialize

  end
end

class Dice
  def roll
    @value = (1..6).to_a.sample
  end
end

YahtzeeGame.new.play