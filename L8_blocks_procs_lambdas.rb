# 8. Blocks, Procs and Lambdas

# Blocks - A Ruby block is just a bit of code that can be executed.
# Block syntax uses either do..end or curly braces ({})

# Example -

5.times do
  puts "I'm a block!"
end

# 8.1. .collect method

fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
doubled_fibs = fibs.collect { |num| num*2 }
puts doubled_fibs

# 8.2. yield keyword

def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield      # method that accept blocks to control from calling method
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }

# 8.3. yield with parameter

def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end
yield_name("Eric") { |n| puts "My name is #{n}." }
# Now call the method with your name!
yield_name("Sayantan") {|x| puts "My name is #{x}!"}

# 8.4. Procs - It's the blocks which can be saved, as block is not the object, it can't be saved

multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end
print (1..100).to_a.select(&multiples_of_3)

# 8.5. .call method

hi = Proc.new { puts "Hello!" }
hi.call

# 8.6. Symbol to Proc

numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
strings_array = numbers_array.map(&:to_s) # instead of using blocks, we are using symbols as procs

# 8.7. Lambda

def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end
lambda_demo(lambda { puts "I'm the lambda!" })

# Example 2 -
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Write your code below this line!
symbolize = lambda { |x| x.to_sym }
# Write your code above this line!
symbols = strings.collect(&symbolize)
print symbols

=begin
8.8. Lambda vs Proc

i. A lambda checks the number of arguments passed to it, while a proc does not.
ii. when a lambda returns, it passes control back to the calling method; when a
 proc returns, it does so immediately, without going back to the calling method.

=end


