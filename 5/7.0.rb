name = 'Alice'
p :"#{name}"

p hash = { 'abc': 123 }

p %s(ruby on rails)

p %i(apple orange melon)
p %i(hello\ngood-bye #{name.upcase})
p %I(hello\ngood-bye #{name.upcase})

string = 'apple'
symbol = :apple
p string.to_sym
p string.to_sym == symbol

p 'apple'.respond_to?('include?')
p 'apple'.respond_to?(:include?)

limit = nil
limit ||= 10
p limit
