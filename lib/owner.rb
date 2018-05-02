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
  
  def self.count
    @@all.count
  end
    
  def say_species
    "I am a #{@species}."
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
  
  def walk_dogs
    @pets[:dogs][0].mood = "happy"
  end
  
  def play_with_cats
    @pets[:cats][0].mood = "happy"
  end
  
  def feed_fish
    @pets[:fishes][0].mood = "happy"
  end
  
  def sell_pets
    self.reset_all
  end
  
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end