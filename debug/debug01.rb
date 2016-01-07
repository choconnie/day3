list = {'yvr' => 'Vancouver', 'yba' => 'Banff', 'yyz' => 'Toronto', 'yxx' => 'Abbotsford', 'ybw' => 'Calgary'}

# Why is it returning nil instead of first element of the list above
#p list[0]
# list is not an array. Thus, need to put first key instead 0 to print out the first value

p list['yvr']
