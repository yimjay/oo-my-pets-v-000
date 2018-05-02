class Owner
  attr_accessor :pets, :name
  @@all = []
  
  def initialize(name)
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all = []
  end
    
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[cats] << new_cat
  end
  
  def buy_dog(name)
  end
  
  def buy_fish(name)
  end

end