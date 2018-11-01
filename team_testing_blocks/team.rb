class Team
  attr_reader :name, :players, :info, :purchase_price

  def initialize(name)
    @info = File.open('./describe_team.txt', 'r')
    @name = name
    @players = []
  end

  def add_roster(roster)
    @players += roster
  end

  def add_player(name)
    @players << name
  end

  def remove_player(name)
    @players.delete name
  end

  def display_info(output: $stdout)
    output.puts @info.read
    output
  end

  def each_player
    count = 0
    loop do
      yield @players[count]

      count += 1
      break if count >= @players.length
    end
    self
  end

  def buy_team(input: $stdin, output: $stdout)
    loop do
      output.puts("For how much would you like to buy the #{name}?")
      amount = input.gets.chomp.to_i

      if amount > 0
        @purchase_price = amount
        break
      end

      output.puts("sorry, we've got to sell the team for more than $0")
    end
  end

  def close_info_file
    @info.close
  end
end

vikings = Team.new "Minnesota Vikings"
