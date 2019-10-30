class Puppy
  attr_accessor :name, :breed, :months_old
  @@all = []

  def initialize(name = nil, breed = nil, months_old = nil)
    @name = name
    @breed = breed
    @months_old = months_old
    @@all << self
  end

  
end