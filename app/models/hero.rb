class Hero
  attr_reader :name, :power, :biography
  @@all = []
  
  def initialize(hero_hash)
    @name = hero_hash["name"]
    @power = hero_hash["power"]
    @biography = hero_hash["biography"]
    @@all << self
  end
  
  def self.all
    @@all
  end
end