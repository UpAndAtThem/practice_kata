require 'pry'

class Player
  attr_accessor :move, :name, :score

  def initialize
    set_name
    @score = 0
  end
end

class Human < Player
  def choose
    choice = nil
    loop do
      puts "Choose rock, paper, scissors, lizard, or spock"
      choice = gets.chomp
      break if Move::VALUES.include? choice
      puts "Sorry, invalid choice."
    end

    self.move = Move.new(choice)
  end

  def set_name
    n = ""
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must have input"
    end
    self.name = n
  end
end

class Computer < Player
  attr_accessor :name

  def set_name
    self.name = ['R2D2', 'Hal', 'Chappie', 'Dolores'].sample
  end

  def choose
    self.move = Move.new(Move::VALUES.sample)
  end
end

class Move
  attr_reader :value

  WINNING_HAND = { 'rock' => %w(lizard scissors), 'paper' => %w(rock spock),
                   'scissors' => %w(lizard paper), 'lizard' => %w(spock paper),
                   'spock' => %w(rock scissors) }.freeze

  LOSING_HAND = { 'rock' => %w(spock paper), 'paper' => %w(scissors lizard),
                   'scissors' => %w(rock spock), 'lizard' => %w(rock scissors),
                   'spock' => %w(lizard paper) }.freeze

  VALUES = ['rock', 'paper', 'scissors', 'lizard', 'spock'].freeze

  def initialize(value)
    @value = value
  end

  def rock?
    @value == 'rock'
  end

  def scissors?
    @value == 'scissors'
  end

  def paper?
    @value == 'paper'
  end

  def lizard?
    @value == 'lizard'
  end

  def spock?
    @value == 'spock'
  end

  def >(other_move)
    (rock? && WINNING_HAND['rock'].include?(other_move.value)) ||
      (paper? && WINNING_HAND['paper'].include?(other_move.value)) ||
      (scissors? && WINNING_HAND['scissors'].include?(other_move.value)) ||
      (lizard? && WINNING_HAND['lizard'].include?(other_move.value)) ||
      (spock? && WINNING_HAND['spock'].include?(other_move.value))
  end

  def <(other_move)
    (rock? && LOSING_HAND['rock'].include?(other_move.value)) ||
      (paper? && LOSING_HAND['paper'].include?(other_move.value)) ||
      (scissors? && LOSING_HAND['scissors'].include?(other_move.value)) ||
      (lizard? && LOSING_HAND['lizard'].include?(other_move.value)) ||
      (spock? && LOSING_HAND['spock'].include?(other_move.value))
  end
end

class RPSGame
  attr_accessor :human, :computer

  def initialize
    display_welcome_message
    @human = Human.new
    @computer = Computer.new()
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors!"
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors!"
  end

  def display_winner
    if human.move > computer.move
      puts "#{human.name} won!"
    elsif human.move < computer.move
      puts "#{computer.name} won!"
    else
      puts "It's a tie!"
    end
  end

  def display_moves
    puts "#{human.name} chose #{human.move.value}."
    puts "#{computer.name} chose #{computer.move.value}"
  end

  def adjust_score
    if human.move > computer.move
      human.score += 1
    elsif human.move < computer.move
      computer.score += 1
    else
      return
    end
  end

  def display_score
    puts "You have #{human.score}.  The Computer has #{computer.score}"
  end

  def play_again?
    choice = nil

    loop do
      puts 'would you like to play again? (y/n)'
      choice = gets.chomp
      break if ['y', 'n'].include? choice
      puts "enter 'y' or 'n'"
    end

    return true if choice == 'y'
    false
  end

  def congrats_message
    winner = human.score > computer.score ? human : computer
    puts "Congratulations, #{winner.name}! You were first to score 10 points"
  end

  def play
    loop do
      human.choose
      computer.choose

      display_moves
      display_winner
      adjust_score
      display_score
      sleep 1.5
      system 'clear'
      if human.score == 10 || computer.score == 10
        congrats_message
        break unless play_again?
      end
    end

    display_goodbye_message
  end
end

class Rule
  def initialize
    # not sure what the "state" of a rule object should be
  end
end

# not sure where "compare" goes yet
def compare(move1, move2); end

RPSGame.new.play
