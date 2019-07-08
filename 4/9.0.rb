sum = 0
# 5.times { |n| sum += n }
# p sum
5.times { sum += 1 }
p sum

a = []
10.upto(14) { |n| a << n }
p a
a = []
10.downto(5) { |n| a << n }
p a

a = []
1.step(10, 2) { |n| a << n }
p a

a = []
10.step(1, -2) { |n| a << n}
p a

a = []
while a.size < 5
  a << 1
end
p a

a = []
while a.size < 5 do a << 1 end
p a

a = []
a << 1 while a.size < 5

a = []
while false
  a << 1
end
p a

begin
  a << 1
end while false
p a

a = [10, 20, 30, 40, 50,]
until a.size <= 3
  a.delete_at(-1)
end
p a

numbers = [1, 2, 3, 4,]
sum = 0
for n in numbers
  sum += n
end
p sum

numbers = [1, 2, 3, 4, 5]
sum = 0
for n in numbers do sum += n end
p sum

sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
p n

sum = 0
for n in numbers
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
p n, sum_value, sum

puts "======"

loop do
  n = numbers.sample
  puts n
  break if n == 5
end

while true
  n = numbers.sample
  puts n
  break if n == 5
end

p (1..4).map { |n| n * 10 }
p 1.upto(5).select(&:odd?)

p [1, 2, 3].class
p Array.include?(Enumerable)

p (1..3).class
p Range.include?(Enumerable)

p 1.upto(3).class
p Enumerator.include?(Enumerable)
