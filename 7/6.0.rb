class User
end
#
# user = User.new
# p user.to_s
# p user.nil?
# p User.superclass
# # p user.methods.sort
#
# p user.class
# p user.instance_of?(User)
# p user.instance_of?(String)
#
# p user.instance_of?(Object)
#
# p user.is_a?(User)
# p user.is_a?(Object)
# p user.is_a?(BasicObject)
# p user.is_a?(String)

class Product
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "name: #{name}, price: #{price}"
  end
end

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end

  def to_s
    "#{super}, running_time: #{running_time}"
  end
end

product = Product.new('A great movie', 1000)
p product.to_s
dvd = DVD.new('An awesome movie', 1000, 120)
p dvd.to_s
# p product.name
# p product.price

# dvd = DVD.new('A great movie', 1000, 120)
# p dvd.name
# p dvd.price
# p dvd.running_time

# dvd = DVD.new('A great movie', 1000)
# p dvd.name
# p dvd.price

class Foo
  def self.hello
    'Hello'
  end
end

class Bar < Foo
end

p Foo.hello
p Bar.hello
