a = 'hello'
b = 'hello'
puts a.object_id
puts b.object_id

c = b
puts c.object_id

def m(d)
  d.object_id
end
puts m(c)

puts a.equal?(b)
puts b.equal?(c)

puts '-----------------------'

def m!(d)
  d.upcase!
end

puts m!(c)

puts b
puts c

puts a
