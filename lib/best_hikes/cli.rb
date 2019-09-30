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
    input = nil 
    while input != "exit"
    puts "Enter the number a state to see the top hiking destination!"
    puts "(Enter list to view states again or exit to leave at anytime)"
    input = gets.strip
    index = input.to_i
    
    if index.between?(1,50) 
      @hikes = BestHikes::Hikes.all
      the_hike = @hikes[index-1]
      puts "#{the_hike.name}"
      @description = BestHikes::Information.all 
      the_description = @description[index-1]
      puts "#{the_description.description}"
    elsif input == "exit"
      puts "Thanks for playing!"
    else 
      puts "Invalid entry, please try again."
    
#     if input.to_i > 4 #has to come first because it is greater than 0 which is next option
#       puts "Invalid entry. Please enter your selection. (1-4)"
#     elsif input.to_i > 0
#       puts "\n"
#       the_champs = @champs[input.to_i-1] #creates a local variable to use within this instance method.
#       puts "#{the_champs.name} won in #{the_champs.year}!"
#       puts "They beat #{the_champs.opponent}."
#       puts "Final score was #{the_champs.score}.\n\n"
#     elsif input == "exit"
#     puts "Thanks for stopping by!"
#   elsif input == "list"
#     list_champs
#   else 
#     puts "Invalid entry. please try again."
#     end
#   end
# end
  def menu
    puts "\nEnter the number of the state you'd like to view"
    input = gets.strip
    index = input.to_i
    @hikes = BestHikes::Hikes.all
    the_hike = @hikes[index-1]
    puts "#{the_hike.name}"
    @description = BestHikes::Information.all 
    the_description = @description[index-1]
    puts "#{the_description.description}"
    end
  

  def goodbye
    puts "Thanks for stopping by!"
  end

end