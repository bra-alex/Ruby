USERNAME = "braalex"
PASSWORD = "password"

PASSWORD_VAULT = {}

puts "Welcome to Password Manager 2.0"
puts "Sign in to continue"

print "Enter username: "
username = gets.chomp

# conditionals

# if-else: Condition has to evaluate to true
if username == USERNAME
  print "Enter password: "
  password = gets.chomp
else
  puts "Invalid username"
  exit
end

if password != PASSWORD
  puts "Invalid password"
  exit
end
# unless: Condition has to evaluate to false
# Do not use with else statement
unless password != PASSWORD
  puts "Hello, #{username}. What would you like to do?"
  puts "1. Add new credentials"
  puts "2. Retrieve existing credentials"
  puts "3. Exit"
  selection = gets.chomp
end

case selection
when "1"
  print "Enter the name of the service: "
  service = gets.chomp

  PASSWORD_VAULT[service] = {}

  print "Enter username: "
  service_username = gets.chomp

  PASSWORD_VAULT[service]["username"] = service_username

  print "Enter password: "
  service_password = gets.chomp

  PASSWORD_VAULT[service]["password"] = service_password

  print PASSWORD_VAULT
when "2"
  puts "Username: #{USERNAME}"
  puts "Password: #{PASSWORD}"

else
  puts "Exiting..."
  exit
end
