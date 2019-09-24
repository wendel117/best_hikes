class BestHikes::CLI
  
  def call 
    puts "Welcome to the Best Hikes in Every State"
    get_states
    list_states
    get_hikes
    list_hikes
    list_hike_descriptions
    #menu
    goodbye
  end
  
  def get_states
    BestHikes::Scraper.scrape_states
  end
  
  def get_hikes
    BestHikes::Scraper.scrape_hikes
  end
  
  def list_states
    states = BestHikes::States.all
    states.each.with_index(1) do |state, i|
      puts "#{i}. #{state.name}"
  end
  
   def list_hikes
    hikes = BestHikes::Hikes.all
    hikes.each.with_index(1) do |hike, i|
      puts "#{i}. #{hike.name}"
  end
  
  def list_hike_descriptions
    descriptions = BestHikes::Hikes.all 
    descriptions.each do |hike|
      puts "#{hike.description}"
    end
  
  # def menu
  #   puts "Please select number of state you'd like hiking information for:"
  #   input = gets.strip
  #   if input.to_i-1.between?(1,50) 
      
    
  #   end
  # end
  
  
  def goodbye
    puts "Thanks for stopping by!"
  end
end
end
end
end