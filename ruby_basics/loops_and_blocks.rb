# can declare blocks with do end for multiline and do {} for singleline
# Infinite loop
loop do
  puts "running infinitely"
end

# times
10.times do
  puts "Multiline Block"
end

# upto
1.upto(25) do |i|
  puts i
end

# downto
1.downto(-1) { |i| puts i }

# While loop
num = 0

while num <= 50
  puts "Lesser than 50, try harder"
  num += 1
end

# until loop

until num > 50
  puts "Why are you even running me?"
  num += 1
end

# Code Blocks
# using code blocks in functions
# using &parameter_name
def positive_numbers(numbers, &code_block)
  puts numbers.map { |num| code_block.call(num) }
end

positive_numbers([-1, 1, 3, -10, -25, -3]) { |num| num.abs }

# using yield
def get_even_numbers(numbers)
  puts numbers.filter { |num| yield num }
end

get_even_numbers([6, -1, 0, -2, 9, 8, 19, 100]) { |num| num.even? }

# handling missing code blocks
# 1. parameter code_block

def positive_numbers(numbers, &code_block)
  puts numbers.map { |num| code_block&.call(num) }
end

# 2. yield

def get_even_numbers(numbers)
  puts numbers.filter { |num| yield num if block_given? }
end

# storing code blocks
# store them in local variables using Proc

capitalize_name = proc { |name| name.capitalize }

print_capitalized_names = proc { |name| puts capitalize_name.call(name) }

# to call a proc: proc_name.call(arguments)

print_capitalized_names.call("gbemisola")

names = ["alex", "rita"]

# to use it as a callback to an in built function, precede the proc name with an &

names.each &print_capitalized_names

# use inbuilt methods

puts names.map(&:capitalize)

# Lambdas
# Simple way
# call it like a proc

hello = lambda { puts "hello" }
hello.call

# stabby lambda
# Without parameters
hello_world = -> { puts "hello world " }
hello_world.call

# With parameters
hello_world = ->(name) { puts "hello#{name}" }
hello_world.call("World")
