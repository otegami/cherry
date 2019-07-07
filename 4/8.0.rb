fruits = ['apple', 'orange', 'melon']
fruits.each_with_index { |fruit, i| puts "#{i}: #{fruit}"}
fruits.map.with_index { |fruit, i| puts "#{i}: #{fruit}"}

p fruits.delete_if.with_index { |fruit, i| fruit.include?('a') && i.odd? }
p fruits

fruits = ['apple', 'orange', 'melon']
fruits.each.with_index(1) { |fruit, i| puts "#{i}: #{fruit}"}
fruits.map.with_index(10) { |fruit, i| puts "#{i}: #{fruit}" }

dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]
areas = []
dimensions.each do |dimention|
  length = dimention[0]
  width = dimention[1]
  areas << length * width
end
p areas

areas = []
dimensions.each do |length, width|
  areas << length * width
end
p areas

dimensions = [
  [10, 20, 100],
  [30, 40, 100],
  [50, 60, 100],
]
dimensions.each do |length, width, foo, bar|
  p [length, width, foo, bar]
end

dimensions.each do |length, width|
  p [length, width]
end

dimensions.each_with_index do |length, width, i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end

dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]
dimensions.each_with_index do |dimension, i|
  length = dimension[0]
  width = dimension[1]
  puts "length: #{length}, width: #{width}, i: #{i}"
end

dimensions.each_with_index do |(length, width), i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end
