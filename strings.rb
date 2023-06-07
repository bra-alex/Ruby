# frozen_string_literal: true

message = 'Hello World'
name = 'Alexander'

# interpolation
puts "2 + 2 = #{2 + 2}"
puts "Hello, #{name}"

# make uppercase
puts message.upcase

# reverse string
puts message.reverse

# concatenation
puts message.sub(' World', ', ') + 'Alexander'

# print multiple times
puts "#{message}\n" * 5

# Querying methods
puts message.ascii_only?
puts message.empty?
puts name.include?('Alex')
puts message.match?('Hello')
puts name.start_with?('Hello')
puts message.end_with?('Hello')

# Method chaining
puts message.downcase.include?('h')

# Check if a string contains a substring(can take regex or string)
puts message =~ /He/

# using negative index on any string allows you to traverse the string in a reverse order
puts name[-1]
