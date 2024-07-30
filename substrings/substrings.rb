#Take a word and an array of words. Count the number of times the first word occur

def sub_string_count(to_count, to_test)
  # break up the words to count given by the user
  to_count_array = to_count.gsub(/[^a-zA-Z\s]/, '').split
  dictionary = {}

  for word_to_count in to_count_array
    for word_to_test in to_test
      if word_to_count == word_to_test
        dictionary[word_to_count] = dictionary.fetch(word_to_count, 0) + 1
      end
    end
  end
  dictionary
end


