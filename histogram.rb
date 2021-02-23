# CREATE A HISTOGRAM:

=begin
In this project, we’ll write a program that takes a user’s input, then builds a hash from that input. 
Each key in the hash will be a word from the user; each value will be the number of times that word occurs.
=end

puts "Enter Text: "
text = gets.chomp
words = text.split
frequencies = Hash.new(0)
words.each do |word| frequencies[word] += 1
end
frequencies = frequencies.sort_by do |word, count| count
end
frequencies.reverse!
frequencies.each do |word, count| puts word + " " + count.to_s
end