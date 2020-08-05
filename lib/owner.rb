require 'pry'


class Owner
  # code goes here

  attr_reader :name, :species, :cat  
@@all =[]


  def initialize (name_arg)
    @name=name_arg
    @species="human"
    @@all << self

  end

  def say_species
  "I am a #{@species}."
  end

  def self.all
   @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear # reset
  end

 def cats
  Cat.all.select do |cats|
    cats.owner==self
   
  end
 end

 def dogs
  Dog.all.select do |dogs|
    dogs.owner==self
   
  end
 end



 def buy_cat(name)
 Cat.new(name, self)
 end

 def buy_dog(name)
  Dog.new(name, self)
  end

  def walk_dogs
  Dog.all.map do|dog|
    dog.mood="happy"
  end
 # binding.pry
  end


  def feed_cats
    Cat.all.map do|cat|
      cat.mood="happy"
    end
  end

  def sell_pets
    pets=[Dog,Cat]

    pets.map do |pet|
      pet.mood="nervous"
    end
  end


end
#binding.pry
#