class BestHikes::States 
  attr_reader :name
  attr_reader :hike
  @@all = []
  
  def initialize
    @name = name
    @hike = []
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
end