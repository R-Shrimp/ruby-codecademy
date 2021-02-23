# FORMATTER

print "What's your first name? "
first_name = gets.chomp
first_name.capitalize!

print "What's your last name? "
last_name = gets.chomp
last_name.capitalize!

print "What City are you from? "
city = gets.chomp
city.capitalize!

print "What state are you from? For example, New York can be typed as " + "NY: "
state = gets.chomp
state.upcase!

puts "Your name is #{first_name} #{last_name}. You are from #{city} in #{state}!"