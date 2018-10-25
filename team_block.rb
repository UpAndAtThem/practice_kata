class Team
  attr_reader :team

  def initialize(team)
    @team = team
  end

  def each
    team.each { |member| yield member}
  end
end

people = ["Julie", "Sue", "John", "Bill", "Joanne"]

team_discovery = Team.new(people)

team_discovery.each do |member|
  puts member
end