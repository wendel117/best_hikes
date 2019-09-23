class BestHikes::States 
  attr_accessor :name
  attr_reader :hike
  @@all = []
  
  def initialize(name)
    @name = name
    @hike = []
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
end