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
require 'yaml'

module Displayable
  def display_line_positions
    system 'clear'
    players.count.times do |player_index|
      if players[player_index].position.zero?
        puts players[player_index].name[0]
      else
        puts "#{" " * ((players[player_index].position) - 1)}#{players[player_index].name[0]}"
      end
    end
    puts "#{" " + "-" * 100}"
    gets
    system 'clear'
  end

  def show_next_six(player)
    possible_landings = board.next_six player

  end

  def bottom_latter(player)
    [ " ___________________________",
     "| \\               \\         |",
     "|  \\---------------\\        |",
     "|   \\               \\       |",
     "|    \\               \\      |",
     "|     \\---------------\\     |",
     "|      \\               \\    |",
     "|       \\               \\   |",
     "|        \\---------------\\  |",
     "|         \\               \\ |",
     "|          \\               \\|",
     "|            #{player.position}              |",
     "|___________________________"]
   end
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
    @spinner = Spinner.new
    @players = set_players
    @board = Board.new(players.dup)
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
        display_line_positions
        show_next_six player
        player_spin(player)

        if player.rolled_position > 100
          board.remove_from_current_square player
          player.position = 80
          board.add_to_square 80, player
        end

        board.advance(player)
        player.position = player.rolled_position
        #puts "#{player.name} = #{player.position}"
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

  def initialize(number, players = [])
    @number = number
    @players = players
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

    def initialize(players)
      @squares = (0..100).map do |number|
        if number == 0
          Square.new number, players
        else
          Square.new number
        end
      end
    end

    def remove_from_current_square(player)
      self[player.position].remove player
    end

    def add_to_square(square, player)
      self[square].players << player
    end

    def advance(player)
      remove_from_current_square(player)
      landed_on_square = self[player.rolled_position]
      landed_on_square.add(player)
    end

    def [](position)
      squares[position]
    end

    def next_six(player)
      squares.slice(player.position, (player.position + 6))
    end
end

game = ChutesLaddersGame.new

game.play
