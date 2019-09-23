class BestHikes::Scraper
  
  def self.scrape_states
    doc = Nokogiri::HTML(open("https://www.outsideonline.com/2393036/50-best-hikes-us"))
    array_states = doc.css("div.article__body h2").children
    array_states.each do |state_name|
      state_info = BestHikes::States.new(state_name.text)
    end
  end
  
  def self.scrape_hikes
    doc = Nokogiri::HTML(open("https://www.outsideonline.com/2393036/50-best-hikes-us"))
    array_hikes = doc.css("div.article__body h3").children
    array_hikes.each do |hike_name|
      hike_name = BestHikes::Hikes.new(hike_name.text)
    
    array_information = doc.css("div.article__body p")
    end
  end
 
  
end