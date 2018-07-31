class Player
  attr_accessor :name, :number

  def initialize(name, number)
    self.name = name
    self.number = number
  end
end

class Team
  attr_accessor :name, :members

  def initialize(name, members)
    self.name = name
    self.members = members
  end

  def[](index)
    members[index]
  end

  def[]=(index, new_player)
    members[index] = new_player
  end
end

michael_jordan = Player.new("Michael Jordan", "23")
scotty_pippin = Player.new("Scotty Pippen", "33")
horace_grant = Player.new("Horace Grant", "54")

dream_team = Team.new("Bulls", [michael_jordan, scotty_pippin, horace_grant])
