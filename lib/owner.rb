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
    
  def say_species
    @species
  end
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

end