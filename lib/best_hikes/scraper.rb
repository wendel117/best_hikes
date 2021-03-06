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
  
  def self.scrape_info
    doc = Nokogiri::HTML(open("https://www.outsideonline.com/2393036/50-best-hikes-us"))
    array_information = doc.css("div.article__body p")
      n = 2
      array_descriptions = (n - 2).step(array_information.size - 2, n).map { |i| array_information[i] }
      array_descriptions.delete_at(5)
      descriptions_final = array_descriptions[1..-1]
      descriptions_final.each do |description|
        hike_info = BestHikes::Information.new(description.text)
    end 
  end

end
