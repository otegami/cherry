# p time  = Time.new(2017, 1, 31, 23, 30, 59)
#
# require 'date'
# p date = Date.new(2017, 1, 31)
# p date_time = DateTime.new(2017, 1, 31, 23, 30,59)
# p File.exists?('./secret.txt')
# p Dir.exists?('./secret_folder')
#
# File.open('../lib/fizz_buzz.rb', 'r') do |f|
#   puts f.readlines.count
# end
#
# File.open('../lib/hello_world.txt', 'w') do |f|
#   f.puts 'Hello, world'
# end
#
# require 'fileutils'
# FileUtils.mv('../lib/hello_world.txt', '../lib/hello_world.rb')

require 'pathname'

lib = Pathname.new('../lib')
p lib.file?
p lib.directory?
p lib.join('sample.txt').to_s
