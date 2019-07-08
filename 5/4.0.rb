currencies = { :japnan => 'yen', :us => 'dollar', :india => 'ruppe' }
p currencies[:us]

currencies[:italy] = "euro"
p currencies

a = { japan: 'yen', us: 'dollar', india: 'ruppe' }
b = { japan: :yen, us: :dollar, india: :rupe }
c = { :japan => :yen, :us => :dollar, :india => :rupe }
p a == b
p b == c

hash = { 'abc' => 123, def: 456 }
p hash['abc']
p hash[:def]
p hash[:abc]
p hash['def']

person = {
  name: 'Alice',
  age: 20,
  friends: ['Bob', 'Carol'],
  phones: { home: "1234-0000", mobile: "5678-0000" }
}

p person[:age]
p person[:friends]
p person[:phones][:mobile]

def buy_burger(menu, drink: true, potato: true)
  
end
