class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def hello
    "Hello, I am #{name}."
  end

  def hi
    "Hi, I am #{self.name}."
  end

  def my_name
    "My name is #{@name}"
  end

  def rename_to_bob
    name = 'Bob'
  end

  def rename_to_carol
    self.name = 'Carol'
  end

  def rename_to_dave
    @name = 'Dave'
  end
end

user = User.new('Alice')
p user.hello
p user.hi
p user.my_name

p user.rename_to_bob
p user.name

p user.rename_to_carol
p user.name

p user.rename_to_dave
p user.name

class Foo
  puts "クラス構文の直下のself: #{self}"

  def self.bar
    puts "クラスメソッド内のself: #{self}"
    # self.baz
  end

  def baz
    puts "インスタンスメソッド内のseld: #{self}"
    # self.bar
  end
end
puts "======"
print Foo.bar
foo = Foo.new
puts "======"
print foo.baz

class Product
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def self.format_price(price)
    "#{price}円"
  end

  def to_s
    # formatted_price = Product.format_price(price)
    formatted_price = self.class.format_price(price)
    "name: #{name}, price: #{formatted_price}"
  end
end

product = Product.new('A great movie', 1000)
p product.to_s
