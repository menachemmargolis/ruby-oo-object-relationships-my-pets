require'pry'
class Owner
  # code goes here
   @@all=[]
   attr_reader :name, :species
   def initialize(name)
    @name = name
    @species = "human"
    @@all << self
   end

   def say_species
    p "I am a human."
   end

   def self.all
     @@all
   end

   def self.count
      @@all.count
   end

   def self.reset_all
    @@all.clear
   end
   
   def dogs
     Dog.all.select{|dog|dog.owner == self}
   end

   def cats
    Cat.all.select{|cat|cat.owner == self}
   end

   def buy_cat(name)
     Cat.new(name,self)
   end
   
   def buy_dog(name)
    Dog.new(name,self)
   end

   def walk_dogs
      dogs.each{|name|name.mood = "happy"}
   end

   def feed_cats
    cats.each{|name|name.mood = "happy"}
   end

   def sell_pets
     pets = dogs+cats
     pets.each{|bye|bye.mood = "nervous"}
     pets.each{|bye|bye.owner=nil}
   end

   def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
   end
  
end


#binding.pry
0