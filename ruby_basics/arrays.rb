num_arr = [2, 4, 6, 1, 1] # array of numbers
duplicate_num_arr = [2, 4, 6, 1, 1] # array of numbers
mixed_arr = [3, "one", {num: 58}, :hi] # array of mixed elements
words_arr = %w[hi hello halo helium hydrogen hydrate hydra] # array of words
symbols_arr = %i[hi hello him her hers his hurt hate hot hair] # array of symbols
key_value_arr = [{a: "a"}, {b: "b"}, {c: "c"}, {d: "d"}, {e: "e"}, {f: "f"}] # array of key value pairs

# accessing elements
p mixed_arr[0..] # return the elements from the specified index to the last element
p num_arr.take(3) # return the first n elements of an array
p words_arr[2, 4] # return n elements including element at specified index
p symbols_arr[3..5] # return the elements within the specified range
p words_arr.drop(3) # return the elements after n elements have been dropped
p symbols_arr.last(4) # return the last n elements in the array
p duplicate_num_arr.first(2) # return the first n elements in the array

# get length of array
p num_arr.size
p mixed_arr.length
p key_value_arr.count

# querying methods
p num_arr.empty?
p words_arr.include?("hydra")

# add elements to an array
# beginning of an array
words_arr.unshift("holy")

# insert at an index
symbols_arr.insert(4, :hint)
key_value_arr.insert(-1, {g: "g"}, {h: "h"}, {i: "i"}, {j: "j"})

# end of an array
# use <<
num_arr << 61

# use push
mixed_arr.push(5)

p(num_arr, mixed_arr, words_arr, symbols_arr, key_value_arr)

# remove elements from an array
# end
symbols_arr.pop

# beginning
words_arr.shift

# at a specific index
mixed_arr.delete_at(2)

# particular element
key_value_arr.delete({a: "a"})

# unique elements
num_arr.uniq # non destructive method
duplicate_num_arr.uniq! # destructive method

p(num_arr, duplicate_num_arr, mixed_arr, words_arr, symbols_arr, key_value_arr)

# join elements in an array
# #join converts everything in the array to a string
p num_arr.join
p mixed_arr.join(" ")
p words_arr.join(", ")
p symbols_arr.join
p key_value_arr.join

# concatenate arrays
p num_arr + mixed_arr + words_arr + symbols_arr + key_value_arr
