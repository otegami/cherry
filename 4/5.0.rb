1..5
1...5
'a'..'e'
'a'...'e'
p (1..5).class
p (1...5).class

range = 1..5
p range.include?(5)

range = 1...5
p range.include?(5)

a = [1, 2, 3, 4, 5,]
p a[1..3]

a = 'abcdef'
p a[1..3]

def liquid?(temperature)
  (0...100).include?(temperature)
end
p liquid?(-1)
p liquid?(0)
p liquid?(99)
p liquid?(100)

def charge(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13..18
    600
  else
    1000
  end
end

p [3, 12, 16, 25].map { |n| charge(n) }

p (1..5).to_a
p ('bad'..'bag').to_a

p [*1..5]

p (1..4).inject(0) { |result, n| result + n }

numbers = []
(1..4).step(2) { |n| numbers << n }
p numbers
