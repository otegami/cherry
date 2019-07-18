# module A
#   def to_s
#     "<A> #{super}"
#   end
# end
#
# module B
#   def to_s
#     "<B> #{super}"
#   end
# end
#
# class Product
#   def to_s
#     "<Product> #{super}"
#   end
# end
#
# class DVD < Product
#   include A
#   include B
#
#   def to_s
#     "DVD #{super}"
#   end
# end
#
# dvd = DVD.new
# p dvd.to_s
# p DVD.ancestors
# p dvd.foo
#
# module Greeting
#   def hello
#     'hello.'
#   end
# end
#
# module Aisatu
#   include Greeting
#
#   def konnichiwa
#     'こんにちは'
#   end
# end
#
# class User
#   include Aisatu
# end
#
# user = User.new
# p user.konnichiwa
# p user.hello
# p User.ancestors

# module A
#   def to_s
#     "<A> #{super}"
#   end
# end
#
# class Product
#   prepend A
#
#   def to_s
#     "<prepend> #{super}"
#   end
# end
#
# product = Product.new
# p product.to_s
#
# class Product
#   def name
#     "A great film"
#   end
# end
#
# product = Product.new
# p product.name
#
# module NameDecorator
#   def name
#     "<<#{super}>>"
#   end
# end
#
# class Product
#   # alias name_original name
#   prepend NameDecorator
# end
#
# p product.name
#
# class User
#   def name
#     'Alice'
#   end
# end
#
# class User
#   prepend NameDecorator
# end
#
# user = User.new
# p user.name

# module StringShuffle
#   refine String do
#     def shuffle
#       chars.shuffle.join
#     end
#   end
# end

# p 'Alice'.shuffle
#
# class User
#   using StringShuffle
#
#   def initialize(name)
#     @name = name
#   end
#
#   def shuffle_name
#     @name.shuffle
#   end
# end
#
# user = User.new('Alice')
# p user.shuffle_name
# p 'Alice'.shuffle

require './string_shuffle'

# puts 'Alice'.shuffle
using StringShuffle
puts 'Alice'.shuffle

class User
  def initialize(name)
    @name = name
  end

  def shuffled_name
    @name.shuffle
  end
end

user = User.new('Alice')
puts user.shuffled_name

module SomeModule
  refine Object do
  end

  refine String do
  end

  refine Enumerable do
  end
end

module Sample
  class User
    NAME = 'Alice'.freeze

    def self.hello(name = NAME)
      "Hello, I am #{name}."
    end
  end
end

p Sample::User::NAME
p Sample::User::hello

s = 'abc'
p s::upcase
