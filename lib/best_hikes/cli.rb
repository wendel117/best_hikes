class BestHikes::CLI
  
  def call 
    puts "Welcome to the Best Hikes in Every State directory!\n"
    scrape_states
    list_states
    menu
    goodbye
  end
  
  def scrape_states
    BestHikes::Scraper.scrape_states
  end
  
  def list_states
    @states = BestHikes::States.all
    @states.each.with_index(1) do |state, i|
      puts "#{i}. #{state.name}"
    end 
  end
   
  def menu
    puts "\nSelect the number of a state to view the top hike!"
    input = gets.strip
    index = input.to_i - 1
    @states = BestHikes::States.all
    state = @states[index]
    puts "#{state.name} here"
    #puts "#{state.hike_name}"
    #puts "#{state.hike_description}"
    
    end
  

  def goodbye
    puts "Thanks for stopping by!"
  end

end