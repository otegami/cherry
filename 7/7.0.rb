# class User
#
#   def hello
#     "Hello, I am #{name}"
#   end
#
#   private
#
#   def name
#     'Alice'
#   end
#
# end
# user = User.new
# p user.hello
#
# class Product
#
#   def to_s
#     "name: #{name}"
#   end
#   private
#
#   def name
#     'A greate movie'
#   end
# end
#
# class DVD < Product
#   def to_s
#     "name: #{name}"
#   end
#
#   private
#   def name
#     "An awesome film"
#   end
# end
#
# product = Product.new
# p product.to_s
# dvd = DVD.new
# p dvd.to_s

# class User
#
#   def self.hello
#     "Hello!"
#   end
#   # class << self
#   #   private
#   #   def hello
#   #     'Hello'
#   #   end
#   # end
#   private_class_method :hello
# end
# p User.hello
#
#
# class User
#
#   def foo
#     'foo'
#   end
#
#   def bar
#     'bar'
#   end
#
#   private :foo, :bar
#
#   def baz
#     'baz'
#   end
#
# end
#
# user = User.new
# # p user.foo
# p user.foo
# p user.bar
# p user.baz

class User
  attr_reader :name, :weight
  protected :weight

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def heavier_than?(other_user)
    other_user.weight < @weight
  end

  # protected
  # def weight
  #   @weight
  # end
end

alice = User.new('Alice', 50)
bob = User.new('Bob', 60)
p alice.heavier_than?(bob)
p bob.heavier_than?(alice)
# p alice.weight
