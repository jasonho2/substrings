# set up an example word dictionary (from TOP lesson)
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  hash_result = Hash.new(0) # initialize new hash
  #string_split = string.downcase.gsub(/[^a-zA-Z\s\d]/, '').split() # regex to filter out non alphanumeric characters, and downcase all letters, and create an array as their own elements
  # create dictionary and scan for matches
  dictionary.each do |word|
    match_array = string.downcase.gsub(/[^a-zA-Z\s\d]/, '').scan(word) # downcase all letters and remove non alphanumeric characters
    hash_result[word] += match_array.length if match_array.length > 0
  end
  return hash_result
end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)