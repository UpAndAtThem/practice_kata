# 1-4 players of chutes and ladders spin the spinner to determine how many squares to go. 
# players start at square # 1 and move the number of squares the spinner displays
# if they end up at the bottom of a ladder they go up.
# if they end up at the top of a chute they go down
# players take turns until one player reaches square # 100

# Nouns
#   players
#   chute
#   ladder
#   spinner
#   square

# Verbs
#   spin
#   move
#   displays
#   go down
#   go up

# set number of players
# players move
#  loop over each player
#    player spin
#    player move
#    check for winner
# winner when player lands on square 100 exactly.

require 'pry'

module Displayable

end

class Player
  def initialize(name)
    @name = name
  end

  def move

  end
end

class ChutesLaddersGame
  include Displayable
  attr_reader :players, :spinner
  def initialize
    @spinner = Spinner.new
    @players = set_players
  end

  def set_num_players
    loop do
      puts "How many people are playing?"
      num_players = gets.chomp.to_i

      if (1..6).include? num_players
        return @num_players = num_players
      end
    end
  end

  def set_players
    set_num_players
    count = 1

    @players = (1..@num_players).each.with_object([]) do |count, players_arr| 
      players_arr << Player.new("Player#{count}")
    end
  end

  def set_players_name
    binding.pry
  end

  def play
    set_players_name
  end
end

class Spinner
  def initialize
    @position = 0
  end

  def spin
    @position = rand(6) + 1
  end
end

class Square
  def initialize(players)
    @players = []
  end

  def add_player(player)
    @players << player
  end
end

class Board

end

game = ChutesLaddersGame.new

game.play