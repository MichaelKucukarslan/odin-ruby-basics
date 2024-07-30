require_relative 'substrings'

puts "What words do you want to test for?"

words_to_count = gets.chomp

array_to_test = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "We are now going to check your words (#{words_to_count}) to the computer provided array [#{array_to_test}]"

puts sub_string_count(words_to_count, array_to_test)
