require_relative 'player'

class Roster
  attr_reader :players

  def initialize(players = [])
    @players = players
  end

  def add_player(player)
    if player.class.ancestors.include?(Player)
      players << player
      return player
    end

    "Player not added"
  end

  def remove_player(player)
    return "Player not on roster" unless players.include? player
    players.delete(player)
  end

  def add_players(players_to_add)
    return "Roster#add_players takes an array" unless players_to_add.class == Array
    return "Wrong Data Types" unless players.all? { |player| player.class == Player}
    return "No players added" if players_to_add.empty?

    @players += players_to_add

    players_to_add
  end

  def select_players
    selected_players = []
    count = 0

    loop do
      selected_players << players[count] if yield(players[count])

      count += 1
      break if count >= players.size
    end

    selected_players
  end

  def each_player
    count = 0

    loop do
      yield players[count]

      count += 1
      break if count >= players.size
    end

    players
  end

  def get_player(inquired_player)
    players.each { |player| return player if player.name == inquired_player }
    "player not found"
  end
end

