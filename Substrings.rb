require 'pry-byebug'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substring (word, dictionary)
    substring_hash = Hash.new(0)
    
    dictionary.each do |input|

        if word.downcase.include?(input.downcase)
            substring_hash[input] += 1
        end
    end

    return substring_hash
    
end

puts substring("Howdy partner, sit down! How's it going?", dictionary)
