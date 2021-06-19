# 5. Methods, Blocks & Sortings

# 5.1. Methods Example

def prime(n)
    puts "That's not an integer." unless n.is_a? Integer
    is_prime = true
    for i in 2..n-1
      if n % i == 0
        is_prime = false
      end
    end
    if is_prime
      puts "#{n} is prime!"
    else
      puts "#{n} is not prime."
    end
end
  
prime(2)

# 5.2. Defining a method

def puts_1_to_10
    (1..10).each { |i| puts i } # loop in ranging
end

# 5.3. Calling method

puts_1_to_10

# 5.4. Methods Example (2)

def array_of_10
  puts (1..10).to_a # this method is for storing the range into an array
end

array_of_10

# 5.5. Methods with parameters

def cubertino(n)
  puts n ** 3
end

cubertino(8)

# 5.6. Splat Arguments ( Multiple values passing through one parameter )

def what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")

# 5.7. Methods that returns

def add(n1,n2)
  return n1+n2
end

# 5.8. Blocks (nameless methods)

1.times do
  puts "I'm a code block!"
end

1.times { puts "As am I!" }

# 5.9. Methods vs Blocks

# method that capitalizes a word
def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1]}"
end

capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"

# block that capitalizes each string in the array
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"

# 5.10. Sorting

my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]
my_array.sort!

# 5.11. Combined Comparison Operator (<=>, It returns 0 if the first operand (
#  item to be compared) equals the second, 1 if the first operand is greater than 
#  the second, and -1 if the first operand is less than the second)

book_1 = "A Wrinkle in Time"
book_2 = "A Brief History of Time"
puts book_1 <=> book_2

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below
books.sort! { |firstBook, secondBook| secondBook <=> firstBook }
