class Dog
  # code goes here
  @@all = []
  attr_reader :name
  attr_accessor :owner, :mood
  def initialize(name, owner ,mood="nervous")
     @name = name
     @owner = owner
     @mood = mood
     @@all << self
  end

  def self.all
    @@all
  end

  def dogs
    Dog.all.select{|cat|cat.owner == self}
   end

end