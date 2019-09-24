class BestHikes::CLI
  
  def call 
    puts "Welcome to the Best Hikes in Every State directory!\n"
    get_states
    list_states
    get_hikes
    menu
    goodbye
  end
  
  def get_states
    BestHikes::Scraper.scrape_states
  end
  
  def get_hikes
    BestHikes::Scraper.scrape_hikes
  end
  
  def list_states
    @states = BestHikes::States.all
    @states.each.with_index(1) do |state, i|
      puts "#{i}. #{state.name}"
    end
  end
  
  def menu
    puts "Select the number of a state to view the top hike!"
    input = gets.strip.to_i
    if input.between?(1,50)
      @hikes = BestHikes::Hikes.all 
      the_hikes = @hikes[input.to_i-1]
      puts "\n#{the_hikes.name} is the top hike in that state!\n\n"
      puts "#{the_hikes.description}"
    end
  end
  
  def goodbye
    puts "Thanks for stopping by!"
  end

end