class BestHikes::Hikes 
  attr_accessor :name, :description
  @@all = []
  def initialize(name)
    @name = name
    #@description = description
    @@all << self
  # binding.pry
  end
  
  def self.all 
    @@all 
  end
end