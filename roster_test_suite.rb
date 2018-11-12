require 'simplecov'
SimpleCov.start

require 'minitest/autorun'

require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative 'roster'
require_relative 'player'

class RosterTest < MiniTest::Test
  def setup
    @roster = Roster.new
    @player = Player.new("Jason Nelson", 33, 190)
    @player2 = Player.new("Jared Nelson", 33, 290)
    @players = [@player, @player2]
  end

  def test_add_player
    return_from_incorrect_class_argument = @roster.add_player("jared allen")
    assert_equal('Player not added', return_from_incorrect_class_argument)

    add_player_return = @roster.add_player(@player)
    assert(@roster.players.include? @player)
    assert_equal(add_player_return, @player)
  end

  def test_remove_player
    @roster.add_player(@player)

    remove_player_return = @roster.remove_player(@player)
    assert_equal(@player, remove_player_return)

    remove_player_return = @roster.remove_player(@player)
    assert_equal('Player not on roster', remove_player_return)
  end

  def test_add_players
    add_players_return = @roster.add_players(@players)
    assert_equal(@players, add_players_return)

    add_players_return = @roster.add_players(nil)
    assert_equal('Roster#add_players takes an array', add_players_return)

    add_players_return = @roster.add_players([])
    assert_equal('No players added' , add_players_return)
  end

  def test_select_players
    @roster.add_players @players

    result = @roster.select_players { |player| player.weight < 250}
    assert_equal([@player], result)
  end

  def test_each_player
    @roster.add_players @players
    result = @roster.each_player { |player| }

    assert(@roster.players, @players)
  end

  def test_get_player
    @roster.add_players @players
    get_player_return = @roster.get_player @player.name

    assert_equal(@player, get_player_return)
  end
end