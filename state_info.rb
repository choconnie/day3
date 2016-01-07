@states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}

@states[:ON] = 'Ontario'
@states[:QC] = 'Quebec City'

@cities = Hash.new
@cities[:OR] = ['Portland', 'Eugene']
@cities[:FL] = ['Miami', 'Orlando']
@cities[:CA] = ['Los Angeles', 'San Francisco']
@cities[:NY] = ['New York City', 'Buffalo']
@cities[:MI] = ['Detroit', 'Grand Rapids']
@cities[:ON] = ['Toronto', 'Hamilton', 'Richmond Hill']
@cities[:QC] = ['Montreal', 'Ottawa', 'Quebec']

def describe_state(state)
  state = state.to_sym
  name = @states[state]
  city = @cities[state].flatten
  num = city.length
  puts "'#{state}' is for #{name}. It has #{num} major cities: #{city.join(", ")}"
end

describe_state('CA')
describe_state('QC')


@taxes = {
  OR: 7.5,
  FL: 8,
  CA: 5,
  NY: 8.3,
  MI: 8.1,
  ON: 9,
  QC: 7.8
}

def calculate_tax(state, amount)
  state = state.to_sym
  rate = @taxes[state]
  cal_amount = amount * (rate/100.0)
  cal_amount.round(2)
end

puts calculate_tax('OR', 123.49)
puts calculate_tax('CA', 123.49)
puts calculate_tax('ON', 1000.00)

def find_state_for_city(city_name)
  state_code = @cities.select do |k, value| 
    value.include?(city_name)
  end
  state_code.keys
end

puts find_state_for_city('Toronto')
puts find_state_for_city('Miami')
