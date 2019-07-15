# s = 'Hello'
# p s.size
# p s.length
#
# class User
#   def hello
#     'Hello!'
#   end
#
#   alias greeting hello
# end
# user = User.new
# p user.hello
# p user.greeting
#
# class User
#   undef freeze
# end
#
# user = User.new
# p user.freeze

# class User
#   class BloodType
#     attr_reader :type
#
#     def initialize(type)
#       @type = type
#     end
#   end
# end
#
# blood_type = User::BloodType.new('B')
# p blood_type.type
#
# class User
#   private class BloodType
#   end
# end

# class User
#   def name=(value)
#     @name = value
#   end
# end
#
# user = User.new
# user.name = "Alice"

# class Product
#   attr_reader :code, :name
#
#   def initialize(code, name)
#     @code = code
#     @name = name
#   end
#
#   def ==(other)
#     if other.is_a?(Product)
#       code == other.code
#     else
#       false
#     end
#   end
# end
#
# a = Product.new('A-0001', 'A great movie')
# b = Product.new('B-0002', 'An awesome film')
# c = Product.new('A-0001', 'A great movie')
#
# p a == b
# p a == c
# p a.==(c)
# p 1 == a

# a = 'abc'
# b = 'abc'
# p a.equal?(b)
#
# c = a
# p a.equal?(c)
#
# p 1 == 1.0
#
# h = { 1 => 'Integer', 1.0 => 'Float' }
# p h[1], h[1.0]
# p 1.eql?(1.0)

# a = 'japan'
# b = 'japan'
# p a.eql?(b)
# p a.hash, b.hash
#
# c = 1
# d = 1.0
#
# p c.eql?(d)
# p c.hash
# p d.hash

# text = '03-1234-5678'
#
# case text
# when /^\d{3}-\d{4}$/
#   puts '郵便番号です。'
# when /^\d{4}\/\d{1,2}\/\d{1,2}$/
#   puts '日付です。'
# when /^\d+-\d+-\d+$/
#   puts '電話番号です。'
# end
#
# value = [1, 2, 3]
# case value
# when String
#   puts '文字列です。'
# when Array
#   puts '配列です。'
# when Hash
#   puts 'ハッシュです。'
# end

  # class MyString < String
  # end
  #
  # s = MyString.new('Hello')
  # p s
  # p s.class
  #
  # class MyArray < Array
  # end
  #
  # p a = MyArray.new()
  # a << 1
  # a << 2
  # p a
  # p a.class

# class String
#   def shuffle
#     chars.shuffle.join
#   end
# end
#
# s = "Hello, I am Alice"
# p s.shuffle

# class User
#   def initialize(name)
#     @name = name
#   end
#
#   def hello
#     "Hello, #{@name}"
#   end
# end
#
# class User
#   # def hello
#   #   "#{@name}さん、こんにちは!"
#   # end
#   alias hello_original hello
#
#   def hello
#     "#{hello_original}じゃなくて#{@name}さん。こんにちは！"
#   end
# end
#
# user = User.new("Alice")
# p user.hello
#
#
# alice = "I am Alice"
# bob = "I am Bob"

# def alice.shuffle
#   chars.shuffle.join
# end
#
# class << alice
#   def shuffle
#     chars.shuffle.join
#   end
# end
#
# p alice.shuffle
# p bob.shuffle

# n = 1
# def n.foo
#   'foo'
# end
# p n.foo
#
# sym = :alice
# def sym.bar
#   'bar'
# end
# p sym.bar
# class User
# end
#
# def User.hello
#   'Hello'
# end
#
# class << User
#   def hi
#     'Hi'
#   end
# end
#
# p User.hello
# p User.hi
#
# def display_name(object)
#   puts "Name is <<#{object.name}>>"
# end
#
# class User
#   def name
#     "Alice"
#   end
# end
#
# class Product
#   def name
#     "A great movie!"
#   end
# end
#
# user = User.new
# p display_name(user)
#
# product = Product.new
# p display_name(product)

# class Product
#   def initialize(name, price)
#     @name = name
#     @price = price
#   end
#
#   def display_text
#     stock = stock? ? 'あり' : 'なし'
#     "商品名: #{@name}, 価格: #{@price}, 在庫: #{stock}"
#   end
#
#   def stock?
#     raise 'Must implement stock? in subclass'
#   end
# end
#
# class DVD < Product
#   def stock?
#     true
#   end
# end
#
# product = Product.new('A great film', 1000)
# p product.display_text
#
# dvd = DVD.new('An awesome film', 3000)
# p dvd.display_text

s = "Alice"
p s.respond_to?(:split)
p s.respond_to?(:name)

def display_name(object)
  if object.respond_to?(:name)
    puts "Name is <<#{object.name}>>"
  else
    puts "No name"
  end
end

p display_name(s) 
