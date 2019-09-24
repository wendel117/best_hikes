class BestHikes::Hikes 
  attr_accessor :name, :state
  @@all = []
  
  def initialize(name, state)
    @name = name 
    @state = state 
    @state.hikes << self
    save
  end
  
  def save 
    @@all << self 
  end
  
  def self.all
    @@all 
  end
 
end