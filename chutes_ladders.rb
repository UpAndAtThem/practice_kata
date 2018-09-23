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
    @position = 0
  end

  def rolled_position
    position + spin
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

  def winner?
    players.any? { |player| player.position == 100}
  end

  def game_loop
    loop do
      players.each do |player|
        player_spin(player)

        if player.rolled_position > 100
          player.position = 80
          next
        end

        board.advance(player)
        player.position = player.rolled_position
        puts player.position
        return if winner?
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
    puts "you win!"
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
  attr_reader :players

  def initialize(number)
    @number = number
    @players = []
  end

  def add(player)
    players << player
  end

  def remove(player)
    players.delete player
  end

  def add_player(player)
    @players << player
  end
end

class Board
    attr_reader :squares

    def initialize
      @squares = (1..100).map do |number|
        Square.new number
      end
    end

    def remove_from_current_square(player)
      self[player.position].remove player
    end

    def advance(player)
      remove_from_current_square(player) unless player.position.zero?
      landed_on_square = self[player.rolled_position]
      landed_on_square.add(player)
    end

    def [](position)
      squares[position - 1]
    end
end

game = ChutesLaddersGame.new

game.play