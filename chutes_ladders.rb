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
# set player names
  # players move
  #  loop over each player
  #    player spins
  #    player moves
  #    check for winner
  #  loop over players until winner when player lands on square 100 exactly.

require 'pry'

module Displayable

end

class Player
  attr_accessor :name, :spin, :position

  def initialize(name)
    @name = name
  end

  def move

  end
end

class ChutesLaddersGame
  include Displayable
  attr_reader :players, :spinner, :board

  def initialize
    @board = Board.new
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

  def valid_name?(name)
    !name.strip.empty?
  end

  def set_name(player)
    loop do
      print "#{player.name} what is your name?: "
      name = gets.chomp

      if valid_name? name
        player.name = name 
        break
      end
      puts "That is an invalid name"
    end
  end

  def set_players_name
    players.each do |player|
      set_name player
    end
  end

  def player_spin(player)
    player.spin = spinner.spin
  end

  def game_loop
    loop do
      players.each do |player|
        player_spin(player)
        board.advance(player)
        binding.pry
      end
      #loop over each player
        # player spins
        # player moves
        # check if won
    end
  end

  def play
    set_players_name
    game_loop
    # display_winner
    # play again?
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
  def initialize(number)
    @number = number
    @players = []
  end

  def add_player(player)
    @players << player
  end
end

class Board
    def initialize
      @squares = (1..100).map do |number|
        Square.new number
      end
    end

    def advance(player)

    end
end

game = ChutesLaddersGame.new

game.play