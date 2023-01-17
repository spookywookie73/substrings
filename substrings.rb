dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, substring)
  # change all letters in string to lowercase
  string = string.downcase
  # create an empty hash
  result = {}

  # loop through the substring and if the word matches any part of
  # the string then count how many times it matches and add it to the hash
  substring.each do |word|
    result[word] = string.scan(word).count if string.include?(word)
  end
  puts result
end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
