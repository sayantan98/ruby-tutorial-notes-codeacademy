# 6. Hashes and symbols

# (Recap)
# 6.1. Creating new hash

matz = Hash.new

# 6.2. Assigning key-values

matz = { "First name" => "Yukihiro",
    "Last name" => "Matsumoto",
    "Age" => 47,
    "Nationality" => "Japanese",
    "Nickname" => "Matz"
}

# 6.3. Iterating over hash

matz.each { |k,v| puts v}

# 6.4. Trying to access key that doesn't exist

matz["aa"] # will return "null" (not 'false', both keywords are different in ruby)

# 6.5. Hash with a default value (as solution of 6.4, to avoid nil value)

no_nil_hash = Hash.new("no-nil") # having the default value "no-nil"

# 6.6. Symbols

menagerie = { :foxes => 2,
    :giraffe => 1,
    :weezards => 17,
    :elves => 1,
    :canaries => 4,   # instead of using strings we use symbols by using ":" at beginning
    :ham => 1
}

# or, there's another way of writing symbols

menagerie = {
    foxes: 2,
    giraffe: 1,
    weezards: 17,
}


# 6.7. Strings vs Symbols

puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id

# 6.8. Conversion between strings and symbols

:sasquatch.to_s # symbol to string
"sasquatch".to_sym # string to symbol
"sasquatch".intern # string to symbol (same as to_sym, no diff)

# 6.9. To check the speeds between strings and symbols

require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)] # merges elements of two array index wise
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."

# 6.10. Select Method (act same as sql)

movie_ratings = {
    memento: 3,
    primer: 3.5,
    the_matrix: 5,
    truman_show: 4,
    red_dawn: 1.5,
    skyfall: 4,
    alex_cross: 2,
    uhf: 1,
    lion_king: 3.5
}
good_movies = movie_ratings.select { |movie,rating| rating > 3 }

# 6.11. each_key and each_value (although each works fine for both)

my_hash = { one: 1, two: 2, three: 3 }

my_hash.each_key { |k| print k, " " }
# ==> one two three

my_hash.each_value { |v| print v, " " }
# ==> 1 2 3

