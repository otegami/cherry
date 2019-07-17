# module Loggable
#   def self.log(text)
#     puts "[LOG] #{text}"
#   end
# end

# p Loggable.log('Hello.')
# module Loggable
#   class << self
#     def log(text)
#       puts "[LOG] #{text}"
#     end
#   end
# end
#
# p Loggable.log('Hello.')
#
# module Loggable
#   def log(text)
#     puts "[LOG] #{text}"
#   end
#
#   module_function :log
# end
#
# p Loggable.log('Hello.')
#
# class Product
#   include Loggable
#
#   def title
#     log 'title is called'
#     'A great movie'
#   end
# end

# product = Product.new
# p product.title

# product = Product.new
#
# module Loggable
#   module_function
#
#   def log(text)
#     puts "[LOG] #{text}"
#   end
# end

module Loggable
  PREFIX = '[LOG]'.freeze

  def log(text)
    puts "#{PREFIX} #{text}"
  end
end

# p Loggable::PREFIX
p Math.sqrt(2)

class Calculator
  include Math

  def calc_sqrt(n)
    sqrt(n)
  end
end

calculator = Calculator.new
p calculator.calc_sqrt(2)

p Math::E
p Math::PI

p Kernel.puts 'Hello.'
p Kernel.p [1, 2, 3]
