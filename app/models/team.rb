class Team
  attr_reader :name, :motto
  @@all = []
  
  def initialize(team_hash)
    @name = team_hash["name"]
    @motto = team_hash["motto"]
    @@all << self
  end
  
  def self.all
    @@all
  end
end