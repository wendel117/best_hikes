class BestHikes::CLI
  
  def call 
    welcome
    scrape_states
    scrape_hikes
    scrape_info
    list_states
    menu
    goodbye
  end
  
  def welcome 
    puts "\n****Welcome to America's Best Hikes!****\n\n"
    puts "Find out the best hike in every state and plan your next outdoor adventure."
    puts "Enter GO to start!"
    input = gets.input.downcase
    if input == "go"
      continue
    else 
      puts "Invalid"
      welcome
  end
  end
  
  def run_scraper
    
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
  
  def show_hike_info(index)
     @hikes = BestHikes::Hikes.all
      the_hike = @hikes[index-1]
      puts "\n#{the_hike.name}"
      @description = BestHikes::Information.all 
      the_description = @description[index-1]
      puts "\n#{the_description.description}"
  end
  
  def menu
    input = nil 
    while input != "exit"
    puts "\nEnter the number a state to see the top hiking destination!"
    puts "(Enter list to view states again or exit to leave at anytime)"
    input = gets.strip.downcase
    index = input.to_i
    
    if index.between?(1,50) 
      show_hike_info(index)
    elsif input == "list"
      list_states
    elsif input == "exit"
      puts "\nThanks for stopping by!"
    else 
      puts "\nInvalid entry, please try again."
    end
  end

  def goodbye
    puts "Goodbye!"
  end
end
end