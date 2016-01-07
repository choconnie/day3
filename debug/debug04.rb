def char_count(list)
  letters = Hash.new(0)
  list.each do |word|
    word.split('').each { |letter| letters[letter] += 1 }
  end
  letters
end

# Why the long face(error)? 
# 1. This should return count of each letter in the list
arr = ['apples', 'oranges', 'hipsters', 'are', 'same']
puts char_count(arr)

# 2. What are the improvements you can do to above code?
def char_count1(list)
  each_word = list.map { |word| word.split('') }.flatten
  each_word.inject(Hash.new(0)) do |memo, letter|
    memo[letter] += 1
    memo
  end
end
puts char_count1(arr)

