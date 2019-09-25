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
  
  def doc
    @doc = "https://www.outsideonline.com/2393036/50-best-hikes-us"
  
  def hike_name
    @hike_name = doc.css("div.article__body h3").children.text
  end
  
  def hike_description
  end
  
end