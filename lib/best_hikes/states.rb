class BestHikes::States 
  attr_accessor :name
  attr_reader :hikes
  @@all = []
  
  def initialize(name)
    @name = name
    @hikes = []
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def get_hikes 
    BestHikes::Scraper.scrape_hikes(self) if @hikes.empty?
    @hikes
  end
  
end