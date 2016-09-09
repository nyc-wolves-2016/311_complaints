module View

  # def display_311_categories
  #   #Rodent, Sewer, Plumbing, Noise, Illegal Parkign, Elevator, Heat/hot water
  # end
  def welcome
    puts "Welcome to 3-1-What!?"
  end

  def prompt_user_for_zip
    puts "Please input a zip code to search for 311 complaints."
  end

  def prompt_user_for_street_name
    puts "Would you like to search for incidents on your street?"
  end

  def get_user_input
    STDIN.gets.chomp
  end

  def display(result)
    puts "#{result}"
  end

  def separator
    puts "-----------------------------------"
  end

end