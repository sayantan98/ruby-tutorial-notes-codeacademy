# Objective - from user input to string using form formatter

print "What's your first name? "
first_name = gets.chomp # gets take the user input & chomp remove the extra lines
first_name.capitalize!

print "What's your last name? "
last_name = gets.chomp # without chomp it could have been used 
last_name.capitalize!

print "What city are you from? "
city = gets.chomp
city.capitalize! # capitalize only upcase the first letter of a string

print "What state or province are you from? "
state = gets.chomp
state.upcase! # "!" is used when we assign to the variable itself, like without that the code will be like as follows

# state2 = state.upcase

puts "Your name is #{first_name} #{last_name} and you're from #{city}, #{state}!"