# 3. Looping with ruby

# 3.1. While Loop

counter = 1
while counter < 11
  puts counter
  counter = counter + 1
end

# 3.2. Until Loop

counter = 1
until counter == 10
  puts counter
  # Add code to update 'counter' here!
  counter = counter + 1
end
puts counter

# 3.3. Increment Operator

counter += 1

# 3.4. For loop

for num in 1...10 # 3 dots means iterate upto 9 
  puts num
end

for num in 1..10 # 2 dots means iterarate upto 10
    puts num
end

# 3.5. Loop method

i = 20
loop do
  i -= 1
  print "#{i}"
  break if i <= 0
end

# 3.6. next keyword

for i in (19).downto(0) # downto is used for decremented loop
    next if i % 2 == 1
    print i
    i -= 1
end

# 3.7. .each keyword (Iterator with array)

numbers = [1, 2, 3, 4, 5]
 
# one way to loop
numbers.each { |item| puts item + 10 }
 
# another way to loop
numbers.each do |item|
  x += 10
  puts item
end

# 3.8. .times keyword

5.times { print "Sayantan! " }

