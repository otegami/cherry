# module Loggable
# end
#
# class Product
#   include Loggable
# end
#
# p Product.include?(Loggable)
# p Product.included_modules
# p Product.ancestors
#
# product = Product.new
# p product.class.include?(Loggable)
# p product.class.included_modules
#
# p product.is_a?(Product)
# p product.is_a?(Loggable)
# p product.is_a?(Object)
#
# module Taggable
#   def price_tag
#     "#{price}円"
#   end
# end
#
# class Product
#   include Taggable
#
#   def price
#     1000
#   end
# end
#
# product = Product.new
# p product.price_tag
#
# p Array.include?(Enumerable)
# p Hash.include?(Enumerable)
# p Range.include?(Enumerable)
#
# p [1, 2, 3].map { |n| n * 10 }
# hash = { a: 1, b: 2, c: 3 }.map { |k, v| [ k, v * 10 ] }
# p hash
# p (1..3).count
#
# p 2 <=> 1
# p 2 <=> 2
# p 1 <=> 2
# p 2 <=> 'abc'
#
# p 'xyz' <=> 'abc'
# p 'abc' <=> 'abc'
# p 'abc' <=> 'xyz'
# p 'abc' <=> 123
#
# p 2 > 1
# p 2 <= 1
# p 2 == 1
#
# p 'abc' > 'xyz'
# p 'abc' <= 'xyz'
# p 'abc' == 'xyz'
#
# class Tempo
#   include Comparable
#
#   attr_reader :bpm
#
#   def initialize(bpm)
#     @bpm = bpm
#   end
#
#   def <=>(other)
#     if other.is_a?(Tempo)
#       bpm <=> other.bpm
#     else
#       nil
#     end
#   end
#
#   def inspect
#     "#{bpm}bpm"
#   end
# end
#
# t_120 = Tempo.new(120)
# t_180 = Tempo.new(180)
#
# p t_120 > t_180
# p t_120 <= t_180
# p t_120 == t_180
#
# class User
# end
#
# p User.class
# p User.superclass
#
# module Loggable
# end
#
# p Loggable.class
# p Module.superclass
#
# class User
#   p self
#   p self.class
# end
#
# module Loggable
#   p self
#   p self.class
# end
# module NameChanger
#   def change_name
#     @name = 'ありす'
#   end
# end
#
# class User
#   include NameChanger
#
#   attr_reader :name
#
#   def initialize(name)
#     @name = name
#   end
# end
#
# user = User.new('alice')
# p user.name
#
# user.change_name
# p user.name
#
# module NameChanger
#   def change_name
#     self.name = 'ありす'
#   end
# end
#
# class User
#   include NameChanger
#
#   attr_accessor :name
#
#   def initialize(name)
#     @name = name
#   end
# end
#
# user = User.new('alice')
# user.change_name
# p user.name

# module Loggable
#   def log(text)
#     puts "[LOG]#{text}"
#   end
# end
#
# s = 'abc'
# p s.log('hello.')
# s.extend(Loggable)
#
# p s.log('Hello.')

module Baseball
  class Second
    def initialize(player, uniform_number)
      @player = player
      @uniform_number = uniform_number
    end
  end
end

module Clock
  class Second
    def initialize(digits)
      @digits = digits
    end
  end
end

p Baseball::Second.new('Alice', 13)
p Clock::Second.new(13)
