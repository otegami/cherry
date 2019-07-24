# require 'csv'
# CSV.open('../lib/sample.csv', 'w') do |csv|
#   csv << ['Name', 'Email', 'Age']
#   csv << ['Alice', 'alice@example.com', 20]
# end
#
# CSV.foreach('../lib/sample.csv', col_sep: "\t") do |row|
#   puts "1: #{row[0]}, 2: #{row[1]}, 3: #{row[2]}"
# end

# require 'json'
#
# user = { name: 'Alice', email: 'alice@example.com', age: 20 }
# p user_json = user.to_json
# p JSON.parse(user_json)

require 'yaml'

yaml = <<TEXT
alice:
  name: 'Alice'
  email: 'alice@example.com'
  age: 20
TEXT

users = YAML.load(yaml)
p users['alice']['gender'] = :female

puts YAML.dump(users)
