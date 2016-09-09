module View

  def display_311_categories
    
  end

  def get_user_input
    puts "Please input a zip code to search for 311 complaints."
    STDIN.gets.chomp
  end

  def display(result)
    puts "#{result}"
  end

  def get_user_street_name
    puts "Would you like to search for incidents on your street?"
    STDIN.gets.chomp
  end

end