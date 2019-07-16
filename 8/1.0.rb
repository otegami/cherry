module Greeter
  def hello
    'hello'
  end
end

module Awesome
end

module Loggable
  # private
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  extend Loggable

  # def title
  #   log 'title is called.'
  #   'A great movie'
  # end

  def self.create_products(name)
    log 'create_products is called'
  end
end

class User
  extend Loggable

  # def name
  #   log 'name is called'
  #   'Alice'
  # end
end

product = Product.new
# p product.title

user = User.new
# p user.name

p Product.create_products([])
p Product.log('Hello.')
# p product.log 'public'
