USERNAME = "braalex"
PASSWORD = "password"

PASSWORD_VAULT = {aws: {username: "braalex", password: "password"}}

def welcome_message
  puts "Welcome to Password Manager 2.0"
end

def prompt_user_for_username
  puts "Sign in to continue"
  print "Enter username: "
  gets.chomp
end

def verify_username(username)
  if username != USERNAME
    puts "Invalid username"
    exit
  end
end

def prompt_user_for_password
  print "Enter password: "
  gets.chomp
end

def verify_password(password)
  if password != PASSWORD
    puts "Invalid password"
    exit
  end
end

def greet_user(username)
  puts "Hello, #{username}. What would you like to do?"
end

def selection_menu
  puts "1. Add new credentials"
  puts "2. Retrieve existing credentials"
  puts "3. Exit"
end

def get_menu_selection
  gets.chomp.to_i
end

def handle_selection(selection)
  case selection
  when 1
    service = set_service_name
    set_username_for(service)
    set_password_for(service)
    display_created_credentials(service)

  when 2
    service = retrieve_service_name
    credentials = retrieve_credentials_for(service)
    (credentials == "") ? display_error_message(service) : display_credentials(credentials: credentials, service_name: service)
  else
    exit_program
  end
end

def set_service_name
  print "Enter the name of the service: "
  service = gets.chomp.to_sym

  PASSWORD_VAULT[service] = {}
  service
end

def set_username_for(service)
  print "Enter username: "
  service_username = gets.chomp

  PASSWORD_VAULT[service][:username] = service_username
end

def set_password_for(service)
  print "Enter password: "
  service_password = gets.chomp

  PASSWORD_VAULT[service][:password] = service_password
end

def display_created_credentials(service)
  puts "Service: #{service}"

  puts "Credentials: "
  PASSWORD_VAULT[service].each do |key, value|
    puts "#{key}: #{value}"
  end

  puts "Credentials for service #{service} added successfully"
end

def retrieve_service_name
  print "Enter service name: "
  gets.chomp.to_sym
end

def retrieve_credentials_for(service)
  return PASSWORD_VAULT[service] if PASSWORD_VAULT.has_key?(service)

  ""
end

def display_error_message(service)
  puts "You have no registered service #{service}"
end

def display_credentials(credentials:, service_name:)
  puts "Here are the credentials for #{service_name}"

  credentials.each do |key, value|
    puts "#{key}: #{value}"
  end
end

def exit_program
  puts "Exiting..."
  exit
end

def password_vault
  welcome_message
  username = prompt_user_for_username

  verify_username(username)
  password = prompt_user_for_password
  verify_password(password)

  greet_user(username)

  loop do
    selection_menu
    selection = get_menu_selection
    handle_selection(selection)
  end
end

password_vault
