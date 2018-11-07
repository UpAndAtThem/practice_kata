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
  attr_accessor :name, :card

  def initialize(player_number)
    @name = "Player #{player_number}"
    @card = YahtzeeCard.new
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

  def select_dice_to_reroll(dice)
    print "you rolled:\n| dice 1 | dice 2 | dice 3 | dice 4 | dice 5 |\n"
    dice.each { |number, dice| print "    #{dice.value}    "}
    puts "\n\nEnter all the dice numbers you want to roll again (ex: 1 3 5 or 135) or just hit enter to end rolling phase"

    dice_to_roll_again = gets.chomp
  end

  def display_card

  end

  def take_turn(cup)
    turn_number = 1
    dice_to_reroll = []
    reroll_dice_string = ''

    loop do
      if turn_number == 1
        cup.roll_all
      else
        cup.roll_dice(dice_to_reroll)
        break if turn_number == 3
      end

      loop do
        reroll_dice_string = select_dice_to_reroll(cup.dice)

        return nil if reroll_dice_string.empty?
        break unless reroll_dice_string.match(/[^ 1-6]/)
      end

      dice_numbers = reroll_dice_string.gsub(" ", "").split("").map(&:to_i)

      dice_to_reroll = cup.dice.select { |number, die| dice_numbers.include?(number)}

      turn_number += 1
    end
    nil
  end

  def mark_card(cup)
    binding.pry
  end

  def spaces_empty?
    true
  end
end

class YahtzeeGame
  attr_accessor :cup, :players

  def initialize
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
        player.display_card
        player.take_turn(cup)
        player.mark_card(cup)

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

  def roll_all
    dice.each { |number, die|  die.roll }
  end

  def roll_dice(dice)
    dice.each { |number, die| die.roll}
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
  attr_reader :value

  def roll
    @value = (1..6).to_a.sample
  end
end

YahtzeeGame.new.play