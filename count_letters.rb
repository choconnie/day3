def count_letters(str)
  str = str.split('').select { |x| !(x==' ') }
  str.inject(Hash.new(0)) do |memo, x|
    memo[x] += 1
    memo
  end
end

str = "lighthouse in the house..."
puts count_letters(str)

def return_indices(str)
  str = str.split('').select { |x| !(x==' ') }
  str.each_with_index.inject(Hash.new(Array.new)) do |memo, (x, i)|
    memo[x] += [i]
    memo
  end
end

puts return_indices(str)
