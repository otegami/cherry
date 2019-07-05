numbers = [1, 2, 3, 4,]
sum = 0
numbers.each do |i|
  sum += i
end
p sum

numbers.each do |number|
  sum += number
end
p sum

numbers .each do |element|
  sum += element
end
p sum

sum = 0

numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end

p sum
# p sum_value : create error
