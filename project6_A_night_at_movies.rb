movies = Hash.new
movies["rab ne bana di jodi"] = 7.0
puts "pls enter your choice  :"
choice = gets.chomp
case choice # case-when is like switch case of C, used when there are too many if-else
when "add"
  puts "Enter a movie name  :"
  title = gets.chomp
  puts "Enter that movie's rating  :"
  rating = gets.chomp
  title = title.to_sym # to_sym is used for converting from string to symbol
  rating = rating.to_i
  if movies[title].nil?
    movies[title] = rating
    puts "Added!"
  else
    puts "Movie already exists"
  end
when "update"
  puts "Enter the movie name you wanna update :"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie is not in hash"
  else
    puts "Enter new rating :"
    nr = gets.chomp
    movies[title] = nr
    puts "Updated!"
  end
when "display"
  movies.each {|title, rating| puts "#{title}: #{rating}"}
when "delete"
  puts "Enter the movie name to be deleted :"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie is not in the hash"
  else
    movies.delete(title.to_sym)
  end
else
  puts "Error!"
end