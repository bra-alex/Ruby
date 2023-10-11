credentials = {public_key: "asdf1234", secret_key: "4321fdsa"}

user = {
  name: "Alexander",
  age: 21,
  hobbies: ["programming, watching movies, photography"],
  other: {
    school: "KNUST",
    level: 400,
    programme: "Computer Science",
    number: "0209835922"
  }
}

extra = {
  email: "darlene54@hotmail.com",
  password: "password",
  dob: "February 03 2023"
}

# access values
p credentials[:public_key]
p credentials[:secret_key]

# update values
credentials[:public_key] = "hello human being"
credentials[:secret_key] = "hello human being".reverse

# add new values
credentials[:region] = "Ghana"

p credentials

# number of elements
p credentials.size

# get all values or keys
p credentials.keys
p credentials.values

# delete elements
p credentials.delete(:region)

# access elements in a nested hash
puts "School: #{user[:other][:school]}"
puts "Level: #{user.dig(:other, :level)}"

# merge hashes
user.merge!(extra)

# looping over hashes
user[:hobbies].each do |hobby|
  puts hobby.capitalize
end

user.each do |key, value|
  if key == :hobbies
    puts "#{key.capitalize}: #{value.map(&:capitalize).join(", ")}"
  elsif key == :other
    value.each do |k, v|
      puts "#{k.capitalize}: #{v}"
    end
  else
    puts "#{key.capitalize}: #{value}"
  end
end

# hashes with array keys
array_hash = {%w[foo bar] => "baz"}

# access value
puts array_hash[%w[foo bar]]

# hashes with string keys
string_hash = {"string" => "hash"}

# access value
puts string_hash["string"]
