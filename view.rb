module View

  # def display_311_categories
  #   #Rodent, Sewer, Plumbing, Noise, Illegal Parkign, Elevator, Heat/hot water
  # end
  def self.welcome
    puts "Welcome to 3-1-What!?"
    mice
  end

  def self.prompt_user_for_zip
    puts "Please input a zip code to search for 311 complaints."
  end

  def self.prompt_user_for_street_name
    puts "Would you like to search for incidents on your street?"
  end

  def self.get_user_input
    STDIN.gets.chomp
  end

  def self.display(result)
    puts "#{result}"
  end

  def self.complaint_display(complaint)
    puts "Created Date: #{complaint.created_date}"
    puts "Complaint Type: #{complaint.complaint_type}"
    puts "Description: #{complaint.descriptor}"
    puts "Address: #{complaint.incident_address}"
    puts "Zip: #{complaint.incident_zip}"
    puts "City: #{complaint.city}"
    puts "Status: #{complaint.status}"
  end

  def self.separator
    puts "-----------------------------------"
  end

  def display_rat
  end

  def self.mouse1
    puts " _  _"
    puts "(o)(o)--."
    puts " \../ (  )"
    puts " m\/m--m'`--."
  end

  def self.mice
    puts "          _   _"
    puts "         (q\\_/p)"
    puts "          /. .\\         __"
    puts "   ,__   =\\_t_/=      .'o O'-."
    puts "      )   /   \\      / O o_.-`|   _   _"
    puts "     (   ((   ))    /O_.-'  O |  (q\\_/p)"
    puts "      \\  /\\) (/\\    | o   o  o|   /. .\\.-'''''-.     ___,"
    puts "       `-\\  Y  /    |o   o O.-`  =\\_t_/=     /  `\\  ("
    puts "          nn^nn     | O _.-'       )\\ ))__ __\\   |___)"
    puts "                    '--`          (/-(/`  `nn---'"
  end

end



#   ()()         ____
#  (..)        /|o  |
#  /\/\       /o|  o|
# c\db/o...  /o_|_o_| 

#   )
#  (__
#  _  )_
# (_)_(_)
#  (o o)
# ==\o/==

#          (\-.
#              / _`> .---------.
#      _)     / _)=  |'-------'|
#     (      / _/    |O   O   o|
# jgs  `-.__(___)_   | o O . o |
#                    `---------'

#                             _
#        (( )_,     ,
# .--.    \ '/     /.\
#     )   / \=    /O o\     _
#    (   / _/    /' o O| ,_( ))___     (`
#     `-|   )_  /o_O_'_(  \'    _ `\    ) 
# jgs   `""""`            =`---<___/---'
#                             "`

#                                      _   _
#         (q\_/p)
#          /. .\         __
#   ,__   =\_t_/=      .'o O'-.
#      )   /   \      / O o_.-`|   _   _
#     (   ((   ))    /O_.-'  O |  (q\_/p)
#      \  /\) (/\    | o   o  o|   /. .\.-"""""-.     ___,
# jgs   `-\  Y  /    |o   o O.-`  =\_t_/=     /  `\  (
#          nn^nn     | O _.-'       )\ ))__ __\   |___)
#                    '--`          (/-(/`  `nn---'