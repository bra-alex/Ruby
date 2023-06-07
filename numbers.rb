# frozen_string_literal: true

# integers
long_number = 1_000_000
short_number = 20
mixed_number = 156_486_233_458
float_number = 25.0546682
irrational_number = 10 / 3.0

puts long_number * short_number

# integer division gives an integer even if the answer is a float
# to get the float, change one of the numbers to a float

puts 10 / 3 # 3
puts 10 / 3.0 # 3.333333333

# Methods

puts long_number.to_f
puts float_number.truncate(3) # positive numbers work on digits after a decimal point
puts mixed_number.truncate(-3) # positive numbers don't have any effect on integers
puts mixed_number.divmod(long_number) # returns array of quotient and remainder
puts mixed_number.remainder(long_number)
puts short_number >= long_number
puts mixed_number <=> long_number
puts float_number >= mixed_number
puts irrational_number
puts irrational_number.rationalize
