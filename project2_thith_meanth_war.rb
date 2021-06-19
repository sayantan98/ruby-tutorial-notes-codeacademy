# objective - to check if there is a "s" in string then convert it to "th"

print "Write a String  : "
user_input = gets.chomp
user_input.downcase!
if user_input.include? "s" # .include? method, which evaluates to true if it finds what it’s looking for and false otherwise
  user_input.gsub!(/s/, "th") # .gsub! stands for global substitution
else
  puts "There's no s in the string"
end
puts "After Converting, #{user_input}"