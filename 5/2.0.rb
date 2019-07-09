p {}.class
{ 'japane' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
# { 'japan' => 'yen', 'japan' => '円' }
h = { 'japane' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
[1, 2, 3].each { |n| puts n }

p currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

currencies['italy'] = 'euro'
p currencies

currencies['japan'] = '円'
p currencies

p currencies['india']
p currencies['brazil']

currencies.each do |key, value|
  puts "#{key} : #{value}"
end

currencies.each do |key_value|
  key = key_value[0]
  value = key_value[1]
  puts "#{key} : #{value}"
end

a = { 'x' => 1, 'y' => 2, 'z' => 3 }
b = { 'x' => 1, 'y' => 2, 'z' => 3 }
p a == b

c = { 'z' => 3, 'y' => 2, 'x' => 1 }
p a == c

d = { 'x' => 10, 'y' => 2, 'z' => 3 }
p a == d

p a.size

p currencies
# currencies.delete('japan')
# p currencies

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
p currencies.delete('italy')

p currencies.delete('italy') { |key| "Not found : #{key}" }
