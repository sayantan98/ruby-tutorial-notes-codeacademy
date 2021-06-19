# 4. Data Structures

# 4.1. Array

demo_array = [100, 200, 300, 400, 500]
print demo_array[2] # print the 3rd element
string_array = ["a", "aa", "aaa"]

# 4.1.1. Insertion and Deletion in an array

demo_array.push(350) #inserion
demo_array.pop #deletion

# 4.2. Multi-Dimensional Array

multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
multi_d_array.each { |x| puts "#{x}\n" }

# 4.3. Hashes

my_hash = { 
    "name" => "Eric",
    "age" => 26,
    "hungry?" => true
  }
  
  puts my_hash["name"]
  puts my_hash["age"]
  puts my_hash["hungry?"]

  # 4.4. .new methods

  pets = Hash.new # creates a new, empty hash

  # 4.5. Adding into hash

  pets["Maww"] = "cat" # here key is "Maww" & value is "cat"

  # 4.6. Accessing hash values

  puts pets["Maww"]

  # 4.7. Traversing arrays and hashes with loops

friends = ["Milhouse", "Ralph", "Nelson", "Otto"]                           # 1-D Array
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]    # 2-D Array
family = {
  "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}                                                                            # Hash

friends.each { |x| puts "#{x}" }    # travesing 1-D Array
s.each {|ele| ele.each { |ele2| puts ele2 } }  # travesing 2-D Array
family.each { |x, y| puts "#{x}: #{y}" }    # traversing hash
family.each { |x, y| puts "#{y}" } # prints only value