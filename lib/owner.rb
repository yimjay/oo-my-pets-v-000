class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  
  def initialize(species)
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    @species = species
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all = []
  end
    
  def self.say_species
    @species
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
  end
  
  def buy_dog(name)
  end
  
  def buy_fish(name)
  end

end