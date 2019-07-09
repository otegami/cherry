require 'benchmark'

p :apple.class
p 'apple'.class

# result = Benchmark.realtime do
#   'apple' == 'apple'
# end
# puts result
#
# result = Benchmark.realtime do
#   :apple == :apple
# end
# puts result

p :apple.object_id
p :apple.object_id
p :apple.object_id

p 'apple'.object_id
p 'apple'.object_id
p 'apple'.object_id
# p :aplle.upcase!
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
result = Benchmark.realtime do
  p currencies['japan']
end
p result

currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
result = Benchmark.realtime do
  p currencies[:japan]
end
p result
