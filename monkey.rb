file = ARGV.first

file_content  = File.open(file).read

# array of all words in file
words = file_content.split(' ')

# words.sample => random word
# words.length => count words
# words.first

puts "words are looking like #{words.sample}"

puts "here's another one, with more info"
word = words.sample
	puts word
	index = words.index(word)
	puts "indexed at #{index}"
	if (index - 1 > -1)
		puts "word previous was #{words[index -1]}"
	end


puts "that was #{words.length} words"
