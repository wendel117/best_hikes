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
    array_hikes.each do |hike|
      hike = BestHikes::Hikes.new(hike_name.text)
      
      array_information = doc.css("div.article__body p")
      n = 2
      array_descriptions = (n - 2).step(array_information.size - 2, n).map { |i| array_information[i] }
      descriptions_final = array_descriptions[1..-1]
      descriptions_final.each do |descriptions|
      hike_description = BestHikes::Hikes.new(descriptions.text)
      
      # items.each do |card|
      # #creating an instance
      # deal = Dealio::Deal.new  #has_many relationship

      # name_and_price = card.css("a.go-link").text.split("$")

      # #Assigning object attributes
      # deal.description = card.css("p").text
    end
  end
end
end