class BestHikes::Scraper
  
  def self.scrape_states
    doc = Nokogiri::HTML(open("https://www.outsideonline.com/2393036/50-best-hikes-us"))
    array_of_states = doc.css("div.article__body h2")
    array_of_states.each do |state|
      state.text
   end
  end
  
end