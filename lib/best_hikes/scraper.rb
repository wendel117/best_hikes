class BestHikes::Scraper
  
  def self.scrape_states
    doc = Nokogiri::HTML(open("https://www.outsideonline.com/2393036/50-best-hikes-us"))
    array_states = doc.css("div.article__body h2").children
    array_states.each do |state_info|
      state_info = BestHikes::States.new 
      
    end
  end
  
end