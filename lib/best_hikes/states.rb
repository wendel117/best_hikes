class BestHikes::States 
  attr_accessor :name, :hike_name, :hike_description
  @@all = []
  
  def initialize(name)
    @name = name
    @hike_name = hike_name
    @hike_description = hike_description
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def add_hike(hike)
    @hikes << hike
    hike.state = self    
  end
end