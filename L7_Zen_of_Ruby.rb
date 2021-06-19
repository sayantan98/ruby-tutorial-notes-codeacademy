# 7. Zen of Ruby

# 7.1. A Simpler "if"

i = 5
puts "it's 5" if i == 5

# 7.2. One line "unless"

puts "it's 5" unless i == 5

# 7.3. Ternary Operator

puts 5==5 ? "They are equal" : "They are not"

# 7.4. when and then (another way of writing case-when statements)

puts "Hello there!"
greeting = gets.chomp
case greeting
when "English" then puts "Hello!"
when "French" then puts "Bonjour!"
when "German" then puts "Guten Tag!"
when "Finnish" then puts "Haloo!"
else puts "I don't know that language!"
end

# 7.5. Conditional Assignment

favorite_book ||= "Cat's Cradle" # if we only want to assign a variable if it hasn’t already been assigned

# 7.6. Implicit return

# in ruby, it's not mandatory to use return keyword, without that it will give the same result

def add(a,b)
  return a + b # it's normal return
end

def add(a,b)
  a + b # but,it's implicit function
end

# 7.7. Short circuit evaluation

def a
  puts "A was evaluated!"
  return true
end
def b
  puts "B was also evaluated!"
  return true
end
puts a || b
puts "------"
puts a && b

# 7.8. .respond_to? method

[1, 2, 3].respond_to?(:push) # returns true if an object can receive that method and false otherwise

age = 26
puts age.respond_to?(:next)

# 7.9. Concatenation Operator (<<)

# Instead of using .push method, can simply use <<

[1, 2, 3] << 4
# ==> [1, 2, 3, 4]

# It works on string also

"Yukihiro " << "Matsumoto"
# ==> "Yukihiro Matsumoto"

# 7.10. String Interpolation(#{})

# Concatenation Operator works good but for non-string values, we've to typecast them

favorite_things = ["Ruby", "espresso", "candy"]
favorite_things.each do |thing|
  puts "I love #{thing}!"
end

