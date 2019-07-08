a = [1, 2, 3, 1, 2, 3,]
p a.length
a.delete(2)
p a, a.size

puts '================='

a = [1, 2, 3, 1, 2, 3,]
a.delete_if do |n|
  n.odd?
end
p a  
