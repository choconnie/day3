@reference_num = {
  1 => 'I',
  5 => 'V',
  10 => 'X',
  50 => 'L',
  100 => 'C',
  500 => 'D',
  1000 => 'M'
}

def to_roman(num)
  str = ''
  arr = @reference_num.keys.reverse
  
  arr.each do |x|
    count = num / x
    count.times { str << @reference_num[x] }
    num = num % x
  end
  str
end
 
# Drive code... this should print out trues.
 
puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"

# TODO: what other cases could you add to ensure your to_roman method is working?
puts to_roman(476) == "CCCCLXXVI"
puts to_roman(1234) == "MCCXXXIIII"
puts to_roman(3029) == "MMMXXVIIII"
