# module AwesomeApi
#   @base_url = ''
#   @debug_mode = false
#
#   class << self
#     def base_url=(value)
#       @base_url = value
#     end
#
#     def base_url
#       @base_url
#     end
#
#     def debug_mode=(value)
#       @debug_mode = value
#     end
#
#     def debug_mode
#       @debug_mode
#     end
#   end
# end
#
# AwesomeApi.base_url = 'http://example.com'
# AwesomeApi.debug_mode = true
#
# p AwesomeApi.base_url
# puts AwesomeApi.debug_mode

require 'singleton'

class Configuration
  include Singleton

  attr_accessor :base_url, :debug_mode

  def initialize
    @base_url = ''
    @debug_mode = false
  end
end

# p config = Configuration.new
config = Configuration.instance
config.base_url = 'http://example.com'
config.debug_mode = true

other = Configuration.instance
other.base_url = 'http://example.com'
other.debug_mode = true

p other.base_url
p other.debug_mode

p config.object_id
p other.object_id

module AwesomeApi
  @base_url = ''
  @debug_mode = false

  class << self
    attr_accessor :base_url, :debug_mode
  end
end

module AwesomeApi
  class Engine
  end
end
