class BestHikes::Scraper
  
  def self.scrape_states
    doc = Nokogiri::HTML(open("https://www.outsideonline.com/2393036/50-best-hikes-us"))
    array_states = doc.css("div.article__body h2").children
    array_states.each do |state|
      state = BestHikes::States.new
      
      state.name = doc.css("div.article__body h2").children.text 
      state.hike_name = doc.css("div.article__body h3").text
      
      array_information = doc.css("div.article__body p")
      n = 2
      array_descriptions = (n - 2).step(array_information.size - 2, n).map { |i| array_information[i] }
      descriptions_final = array_descriptions[1..-1]
      state.hike_description = descriptions_final
      
      binding.pry
    
    
    end
  end
  
  # def self.scrape_hikes(state)
  #   doc = Nokogiri::HTML(open("https://www.outsideonline.com/2393036/50-best-hikes-us"))
  #   array_hikes = doc.css("div.article__body h3")
  #   array_hikes.each do |hike_info|
  #     hike = BestHikes::Hikes.new 
      
  #     #attributes here 
  #     hike.name = hike_info[state]
      
  #     array_information = doc.css("div.article__body p")
  #     n = 2
  #     array_descriptions = (n - 2).step(array_information.size - 2, n).map { |i| array_information[i] }
  #     descriptions_final = array_descriptions[1..-1]
  #     descriptions_final.each do |descriptions|
  #     hike.description = descriptions.text
      
  #     state.add_hike(hike)
  #     binding.pry
  #   end
  # end

end