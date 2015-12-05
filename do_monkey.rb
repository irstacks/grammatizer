require 'treat'
include Treat::Core::DSL
d = document '/Users/ia/sandbox/grammatizer/documents/albee.md'

hunked = d.chunk
hunked.print_tree

ps = hunked.paragraphs
sex = hunked.sections
psent = hunked.sentences

puts "SECTIONS => #{sex}"
puts "PARAGRAPHS => #{ps}"
puts "SENTENCES => #{psent}"