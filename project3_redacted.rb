# Objective :- If the word is present in the sentence, replace it with the word, "redacted!!!"

puts "Write the text :"
text = gets.chomp
puts "Write the words for redacted :"
redact = gets.chomp
words = text.split(" ") # it takes in a string and returns an array
words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED! "
  end
end