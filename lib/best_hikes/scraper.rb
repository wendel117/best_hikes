class BestHikes::Scraper
  
  def self.scrape_states
    doc = Nokogiri::HTML(open("https://www.outsideonline.com/2393036/50-best-hikes-us"))
    array_states = doc.css("div.article__body h2").children
    array_states.each do |name|
      state = BestHikes::States.new(name)
    end 
  end
  
  def self.scrape_hikes
    doc = Nokogiri::HTML(open("https://www.outsideonline.com/2393036/50-best-hikes-us"))
    array_hikes = doc.css("div.article__body h3").children
      array_hikes.each do |name|
      hike = BestHikes::Hikes.new(name)
    end
  end
      
      # array_information = doc.css("div.article__body p").children
      # n = 2
      # array_descriptions = (n - 2).step(array_information.size - 2, n).map { |i| array_information[i] }
      # descriptions_final = array_descriptions[1..-1]
      # descriptions_final.each do |description|
      # state.hike_description = description
      # array_of_movies = index_page.css("div.countdown-item")

    
end
