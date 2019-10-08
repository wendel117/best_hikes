class BestHikes::CLI
  
  def call 
    welcome
    intro_menu
    list_states
    menu
    goodbye
  end
  
  def welcome 
    puts "\n****Welcome to America's Best Hikes!****\n\n"
    puts "Find out the best hike in every state and plan your next outdoor adventure."
  end
  
  def intro_menu 
    input = nil
    while input != "go"
    puts "Enter GO to see the list of states."
      input = gets.strip.downcase
      if input == "go"
        run_scraper
      else 
        puts "Invalid entry"
      end
    end
  end
  
  def run_scraper
    BestHikes::Scraper.scrape_states
    BestHikes::Scraper.scrape_hikes
    BestHikes::Scraper.scrape_info
  end
  
  def list_states
    @states = BestHikes::States.all
    @states.each.with_index(1) do |state, i|
      puts "#{i}. #{state.name}"
    end 
  end
  
  def show_hike_info(index)
    chosen_state = @states[index-1]
    hikes = BestHikes::Hikes.all
    chosen_hike = hikes[index-1]
    puts "\nBest Hike in #{chosen_state.name}: #{chosen_hike.name}"
    descriptions = BestHikes::Information.all 
    chosen_description = descriptions[index-1]
    puts "\n#{chosen_description.description}"
  end
  
  def menu
    input = nil 
    while input != "exit"
    puts "\nEnter the number of a state to find the best hiking destination!"
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
  end
  
  def goodbye
    puts "See ya later."
  end

end