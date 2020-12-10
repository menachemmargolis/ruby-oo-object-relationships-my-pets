
 class Cat
  # code goes here 
   @@all = []
  attr_reader :name
  attr_accessor :mood,:owner
   def initialize(mood_par ="nervous",name,owner)
    @mood = mood_par
    @name = name
    @owner = owner
    @@all << self
   end
   
   def self.all
     @@all
   end


   

end

