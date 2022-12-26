require 'pry-byebug'

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(string, dictionary)
  # convert string into array of words
  string_array = string.gsub(/[^a-z ]/i, '').downcase.split

  # create new hash
  output = {}

  string_array.each do |string_word|
    # compare each dictionary word to each word of the string
    dictionary.each do |dictionary_word|
      # when a dictionary word is included in a word of the string,
      if string_word.include?(dictionary_word)
        # add 1 to its value IF it has already appeared prior ELSE
        if output.has_key?(dictionary_word)
          output[dictionary_word] += 1
        else
          # make it as a new key in the hash
          output[dictionary_word] = 1
        end
      end
    end
  end
end

# let hash value be number of times it is included

substrings("Howdy partner, sit down! How's it going?", dictionary)
