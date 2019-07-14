# class Product
#   # DEFAULT_PRICE = 0
#
#   def foo
#     DEFAULT_PRICE = 0
#   end
#   # private_constant :DEFAULT_PRICE
# end

# product = Product.new
# p product.foo

# class Product
#   DEFAULT_PRICE = 0
#   # freeze
#   # DEAULT_PRICE = 5000
# end

# class Product
#   NAME = 'A product'
#   SOME_NAMES = ['Foo', 'Bar', 'Baz'].map(&:freeze).freeze
#   SOME_PRICES = { 'Foo' => 1000, 'Bar' => 2000, 'Baz' => 3000 }
#
#   def self.name_without_foo(names = SOME_NAMES)
#     names.delete('Foo')
#     names
#   end
# end
#
# Product::SOME_NAMES[0].upcase!
# p Product::SOME_NAMES
# Product.name_without_foo
# p Product::SOME_NAMES

# p Product::NAME.upcase!
# p Product::SOME_NAMES << 'Hoge'
# Product::SOME_PRICES['Hoge'] = 4000
# p Product::SOME_PRICES

class Product
  SOME_VALUE = 0
  SOME_TYPE = :foo
  SOME_FLAG = true
end
