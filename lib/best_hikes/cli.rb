class BestHikes::CLI
  
  def call 
    puts "Welcome to the Best Hikes in Every State directory!\n"
  end
  
  def list_states
    @states = BestHikes::States.all
    @states.each.with_index(1) do |state, i|
      puts "#{i}. #{state.name}\n\n"
      
    puts "Select the number of a state to view the top hike!"
    input = gets.strip.to_i
    if input.between?(1,50)
      @hikes = BestHikes::Hikes.all 
      binding.pry
      the_hikes = @hikes[input-1]
      puts "\n#{the_hikes.description} is the top hike in that state!\n\n"
      #binding.pry
    end
  end
  
  def goodbye
    puts "Thanks for stopping by!"
  end

end