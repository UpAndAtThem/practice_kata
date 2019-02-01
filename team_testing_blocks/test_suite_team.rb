require 'simplecov'
SimpleCov.start

require 'minitest/autorun'
require_relative 'team.rb'

require "minitest/reporters"
Minitest::Reporters.use!

require 'pry'

class TeamTest < MiniTest::Test
  def setup
    @vikings = Team.new("Minnesota Vikings")
  end

  def test_add_roster
    expected_roster = ['Chris Carter', 'Jared Allen', 'Adrian Peterson', 'Randy Moss', 'Brett Farve']
    actual_roster = @vikings.add_roster(expected_roster)

    assert_equal(expected_roster, @vikings.players)
  end

  def test_team_instance
    assert_instance_of(Team, @vikings)
  end

  def test_add_player
    expected_result = 'Tarvaris Jackson'
    @vikings.add_player expected_result

    assert(@vikings.players.include? expected_result)
  end

  def test_remove_player
    @vikings.add_player 'Brett Farve'
    assert(@vikings.players.include? 'Brett Farve')

    @vikings.remove_player 'Brett Farve'
    refute(@vikings.players.include? 'Brett Farve')
  end

  def test_display_info
    output = <<~DESC
    The Minnesota Vikings are a professional American football team.
    DESC

    assert_output(output){ @vikings.display_info}
  end

  def test_each_player
    @vikings.add_roster ['Chris Carter', 'Jared Allen', 'Adrian Peterson', 'Randy Moss', 'Brett Farve']
    
    roster = @vikings.players
    
    result_each_player = []
    @vikings.each_player { |player| result_each_player << player}

    assert_equal(roster, result_each_player)
  end

  def test_buy_team
    output = StringIO.new
    input = StringIO.new "0\n100\n"

    @vikings.buy_team(input: input, output: output)
    assert_equal(100, @vikings.purchase_price)


  end
end