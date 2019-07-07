a = [1, 2, 3, 4, 5]
p a[1, 3]
p a.values_at(0, 2, 4)


a = [1, 2, 3]
p a[a.size - 1]

a = [1, 2, 3]
p a[-1]
p a[-2]
p a[-2, 2]
p a.last
p a.last(2)
p a.first
p a.first(2)

a = [1, 2, 3]
p a[-3] = -10
p a[-4]
# p a[-4] = 0

a = [1, 2, 3, 4, 5]
p a[1, 3] = 100
p a

a = []
p a.push(1)
p a.push(2, 3)

a = [1, 2, 3, 1, 2, 3]
a.delete(2)
p a

a = [1, 2, 3, 1, 2, 3]
p a.delete(5)

a = [1]
b = [2, 3]
a.concat(b)
p a
p b

a = [1]
b = [2, 3]
p a + b
p a, b

a = [1, 2, 3]
b = [3, 4, 5]
p a | b

a = [1, 2, 3]
b = [3, 4, 5]
p a - b

a = [1, 2, 3]
b = [3, 4, 5]
p a & b

require 'set'
a = Set.new([1, 2, 3])
b = Set.new([3, 4, 5])
p a | b
p a - b
p a & b

e, f = 100, 200, 300
p e,f

e, *f = 100, 200, 300
p e,f

a = []
p a.push(1)
p a.push(2, 3)

a = []
b = [2, 3]
p a.push(1)
p a.push(b)

a = []
b = [2, 3]
p a.push(1)
p a.push(*b)

def greeting(*name)
  "#{name.join('と')},　こんにちは！"
end

p greeting('田中さん')
p greeting('田中さん', '鈴木さん')
p greeting('田中さん', '鈴木さん', '佐藤さん')

a = [1, 2, 3]
p [a]
p [*a]

a = [1, 2, 3,]
p [-1, 0, *a, 4, 5,]
p [-1, 0,] + a + [4, 5,]

p [1, 2, 3] == [1, 2, 3]
p [1, 2, 3] == [1, 2, 3,]
p [1, 2, 3] == [1, 2, 4]
p [1, 2, 3] == [1, 2]
p [1, 2, 3] == [1, 2, 3, 4]

['apple', 'melon', 'orange']
p %w!apple melon orange!
p %w(apple melon orange)
p %w(
  apple
  melon
  orange
)
p %w(big\ apple small\ melon orange)

prefix = 'This is'
p %W(#{prefix}\ an\ apple small\ melon orange)

p 'Ruby'.chars
p 'Ruby,Java,Perl,PHP'.split(',')

p a = Array.new
p a = Array.new(5)
p a = Array.new(5, 0)
p a = Array.new(10) { |n| n % 3 + 1 }

a = Array.new(5, 'default')
p a
p str = a[0]
p str.upcase!
p a.map(&:object_id)

a = Array.new(5) {'defalut'}
p a
p a.map(&:object_id)

a = Array.new(5, 0)
p a

p n = a[0]
# p n.negative!

a = 'abcde'
p a[2]
p a[1, 3]

p a[0] = 'X'
p a
a[1, 3] = 'Y'
p a << 'PQR'
