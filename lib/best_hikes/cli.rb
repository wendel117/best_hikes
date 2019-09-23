class BestHikes::CLI
  
  def call 
    puts "Welcome to the Best Hikes in Every State"
    list_states
    #menu
    goodbye
  end

  def list_states
    states = BestHikes::Scraper.scrape_states
    states.each.with_index(1) do |state, i|
      puts "#{i}. #{state.name}"
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