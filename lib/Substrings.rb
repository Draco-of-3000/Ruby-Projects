dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substring (input, dictionary)
  substring_hash = Hash.new(0)
    
  # Loop through every word in the dictionary
  dictionary.each do |word|
 
    # Check if the word is a substring of the input string
    if input.downcase.include?(word.downcase)

      # If so, add the word and the number of times it appears to the substring hash
      substring_hash[word] += 1
    end
  end

  substring_hash
end
