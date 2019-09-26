class BestHikes::Hikes 
  attr_accessor :name, :hike_description
  @@all = []
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
  def hike_description
    doc = Nokogiri::HTML(open("https://www.outsideonline.com/2393036/50-best-hikes-us"))
     array_information = doc.css("div.article__body p")
      n = 2
      array_descriptions = (n - 2).step(array_information.size - 2, n).map { |i| array_information[i] }
      descriptions_final = array_descriptions[1..-1]
      descriptions_final.each do |description|
        @hike_description = description.text
      end
  end
end