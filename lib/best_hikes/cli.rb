class BestHikes::CLI
  
  def call 
    puts "Welcome to the Best Hikes in Every State directory!\n"
    scrape_states
    scrape_hikes
    scrape_info
    list_states
    menu
    goodbye
  end
  
  def scrape_states
    BestHikes::Scraper.scrape_states
  end
  
  def scrape_hikes 
    BestHikes::Scraper.scrape_hikes
  end
  
  def scrape_info
    BestHikes::Scraper.scrape_info
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
    index = input.to_i
    @hikes = BestHikes::Hikes.all
    the_hike = @hikes[index-1]
    puts "#{the_hike.name}"
    @description = BestHikes::Information.all 
    the_description = @description[index-1]
    puts "#{the_description.description}"
  #binding.pry
    end
  

  def goodbye
    puts "Thanks for stopping by!"
  end

end