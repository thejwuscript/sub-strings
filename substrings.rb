def substrings(string, dictionary)
  array = string.split("") 
  substrings_ary = []

  for i in 0..array.length-1
    for j in i..array.length-1
    sub_string = array[i..j].join.downcase
    substrings_ary += dictionary.select {|word| word == sub_string}
    end
  end

  result = substrings_ary.reduce(Hash.new(0)) do |accumulator, word|
  accumulator[word] += 1
  accumulator
  end

  result
end

test_string = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings(test_string, dictionary)