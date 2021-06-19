# Objective :- create a hash having words and it's occurance in a sentence

puts "Text please :"  
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)  # with default value 0
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by { |word, value| value } #   here sort_by will sort over value
frequencies.reverse! # it will reverse the hash

frequencies.each { |k, v| puts "#{k} #{v}"}