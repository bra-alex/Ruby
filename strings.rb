# frozen_string_literal: true

# interpolation
# puts "2 + 2 = #{2 + 2}"

message = 'Hello World'

# make uppercase
# puts message.upcase

# reverse string
# puts message.reverse

name = 'Alexander'
# concatenation
# puts message.sub(" World", ", ") + "Alexander"
# puts "Hello, #{name}"

# print multiple times
# puts "#{message}\n" * 5

# Querying methods
puts message.ascii_only?
puts message.empty?
puts name.include?('Alex')
puts message.match?('Hello')
puts name.start_with?('Hello')
puts message.end_with?('Hello')
