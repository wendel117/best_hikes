class BestHikes::Scraper
  
  def self.scrape_states
    doc = Nokogiri::HTML(open("https://www.outsideonline.com/2393036/50-best-hikes-us"))
    array_states = doc.css("div.article__body h2").children
    array_states.each do |state_name|
      name = state_name.text 
      BestHikes::States.new(name)
    end
  end
  
  def self.scrape_hikes(state)
    BestHikes::Hikes.new("Test 1", state)
    BestHikes::Hikes.new("Test 2", state)
  end
  
  # def self.scrape_hikes(state)
  #   doc = Nokogiri::HTML(open("https://www.outsideonline.com/2393036/50-best-hikes-us"))
  #   array_hikes = doc.css("div.article__body h3").children
    
  #   end


end