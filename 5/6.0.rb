currencies = { japan: 'yen', us: 'dollar', india: 'ruppe' }
p currencies.keys
p currencies.values

puts '============'

p currencies.has_key?(:japan)
p currencies.has_key?(:italy)

puts "++++++++++++"
# a = { italy: 'euro', **currencies }
a = {italy: 'euro'}.merge(currencies)
p a

currencies = { japan: 'yen', us: 'dollar', india: 'ruppe' }
p currencies
p currencies.to_a.to_h

array = [1, 2, 3, 4,]
# p array.to_h
array = [[:japan, "yen"], [:japan, "円"]]
p array.to_h

array = [[:japan, "yen"], [:us, "dollar"], [:india, "ruppe"]]
p Hash[array]

array = [:japan, "yen", :us, "dollar", :india, "ruppe"]
p Hash[*array]

h = {}
p h[:foo]

h = Hash.new('hello')
p h[:foo]

a = h[:foo]
b = h[:bar]

p a.equal?(b)

a.upcase!
p a, b

h = Hash.new { 'Hello' }
a = h[:foo]
b = h[:bar]

p a.equal?(b)
a.downcase!
p a, b
p h

h = Hash.new { |hash, key| hash[key] = 'hello' }
p a = h[:foo]
p b = h[:bar]
p h
