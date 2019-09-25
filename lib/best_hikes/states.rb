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
  
end