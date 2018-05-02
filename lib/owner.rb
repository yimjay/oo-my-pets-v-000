class Owner
  attr_accessor :pets
  
  def initialize
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[cats] = 
  end
  
  def buy_dog(name)
  end
  
  def buy_fish(name)
  end

end