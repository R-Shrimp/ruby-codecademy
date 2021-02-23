# A NIGHT AT THE MOVIES

=begin

Keeping track of all the parts of our digital lives is a pain. Now that you know how to write Ruby, however, you can make things easy for yourself! 
Let’s start by creating a program that will keep track of our movie ratings.
It’ll do one of four things: add a new movie to a hash, update the rating for an existing movie, display the movies and ratings that are already in the hash, or delete a movie from the hash. 
If it doesn’t receive one of those four commands, the program will output some kind of error message.

=end

movies = {
  TheJungleBook: 3.8,
  FindingNemo: 3.5,
  TheExorcist: 5,
}

puts "What would you like to do? "

choice = gets.chomp

case choice
when "add"
  puts "Please add a new movie: "
  title = gets.chomp

  if movies[title.to_sym].nil?
  puts "What rating does this movie have?"

  rating = gets.chomp
  movies[title.to_sym] = rating.to_i

  else
  puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end

when "update"
  puts "Please enter movie title: "
  title = gets.chomp
  if movies[title].nil?
  puts "This movie does not exist!"
  else
  puts "Please enter a new rating: "
  rating = gets.chomp
  end
  
when "display"
  movies.each do |movie, rating| 
  puts "#{movie}: #{rating}"
  end

when "delete"
  puts "Please enter movie title: "
  answer = gets.chomp
  if movies[title].nil?
  puts "Error! This movie does not exist!"
  else
  puts movies.delete
  end
end

