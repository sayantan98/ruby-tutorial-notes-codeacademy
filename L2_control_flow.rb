# 2. Control Flow

# 2.1. Using if, elsif & else

print "Integer please: "
user_num = Integer(gets.chomp)

if user_num < 0
  puts "You picked a negative integer!"
elsif user_num > 0
  puts "You picked a positive integer!"
else
  puts "You picked zero!"
end

# 2.2. Using unless

hungry = false

unless hungry  # Similar to "if not" hungry 
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end

# 2.3. Equal or not Comparators

is_true = 2 != 3 # relative not equal
is_false = 2 == 3 # relative equal

# 2.4. greater than or less than Comparators

test_1 = 17 > 16
test_2 = 21 < 30
test_3 = 9 >= 9
test_4 = -11 <= 4

# 2.5. Logical or Boolean Operators

boolean_1 = 77 < 78 && 77 < 77 # logical and
boolean_2 = false || -10 > -9 # logical or
boolean_3 = !(700 / 10 == 70) # logical not
boolean_4 = !true && (!true || 100 != 5**2) # combined boolean

# 2.6. One-line if/unless (Applicable when no else is needed)

puts "True!" if 2==2
puts "True!" unless 2 != 2

