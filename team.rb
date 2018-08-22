class Player
  attr_accessor :name, :age, :stats

  def initialize(name, age, stats = [])
    @name = name
    @age = age
    @stats = stats
  end

  def to_s
    "#{name}"
  end
end

class Team
  attr_accessor :roster, :name

  def initialize(roster, name)
    self.roster = roster
    self.name = name
  end

  def [](index)
    roster[index]
  end

  def +(new_teammate)
    begin
      raise(TypeError, "Wrong type") unless (new_teammate.class == Player)

      self.roster += [new_teammate]
    rescue TypeError => e
      p "Wrong argument type. #{new_teammate} was not added to team"
      return nil
    end

    new_teammate
  end

  def to_s
    roster[0..-2].map(&:name).join(", ") + ", and #{roster[-1].name}"
  end
end

bulls_roster = [Player.new("Michael Jordan", 18, ["GOAT"]), 
                Player.new("Scottie Pippen", 18),
                Player.new("Steve Kerr", 19),
                Player.new("Horace Grant", 20)]

celtics_roster = [Player.new("Larry Bird", 19),
                  Player.new("Kevin Mchale", 18),
                  Player.new("Robery Parish", 20),
                  Player.new("Bill Walton", 21)]

bulls = Team.new(bulls_roster, "Chicago Bulls") 
celtics = Team.new(celtics_roster, "Boston Celtics")


p bulls[0]