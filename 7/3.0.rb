class User

  attr_accessor :name, :age
  # attr_reader :name
  # attr_writer :name

  def initialize(name, age = 20)
    @name = name
    @age = age
  end

  def self.create_users(names)
    names.map do |name|
      User.new(name)
    end
  end

  # class << self
  #   def method_name
  #
  #   end
  # end

  # def name
  #   @name
  # end
  #
  # def name=(value)
  #   @name = value
  # end

  def hello
    "Hello, I am #{@name}."
    # shuffle_name = @name.chars.shuffle.join
    # "Hello, I am #{shuffle_name}."
  end
end

class OrderItem
end

# User.new
alice = User.new('Alice')
bob = User.new('Bob', 30)
p alice.hello , bob.hello
p alice, bob

names = ['Alice', 'Bob', 'Carol']
users = User.create_users(names)
users.each do |user|
  puts user.hello
end

class Product
  DEFAULT_PRICE = 0
  attr_reader :name, :price

  def initialize(name, price = DEFAULT_PRICE)
    @name = name
    @price = price
  end
end

product = Product.new('A free movie')
p product.name
p product.price
