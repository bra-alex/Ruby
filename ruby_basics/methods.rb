require "date"

# Methods without arguments
def say_hello
  puts "Hello World"
end

# say_hello

# Methods with a single argument
def greet(person)
  puts "Greetings #{person}"
end

# greet("Alexander")

# Methods with multiple arguments
def updateUserDetails(name, age, school)
  user = {
    name: "Baba Na Zuri",
    age: 55,
    school: "I didn't go to school M\A School"
  }

  user[:name] = name
  user[:age] = age
  user[:school] = school

  p user
end

# updateUserDetails("Yaa Mokua", 66, "Yaa Mokua High School")

# Methods with arguments with default values
def setCarAvailability(date, availability = "unavailable")
  car = {
    make: "BMW",
    model: "X6 M Competition",
    year_of_manufacture: 2022,
    bhp: 699,
    availability: availability == "available",
    createdAt: date
  }

  p car
end

# setCarAvailability(Time.now)
# setCarAvailability(Time.now, "available")

# Methods with keyword arguments
def findUser(filter:)
  users = {
    "Alex" => {
      name: "Alexander",
      age: 66,
      school: "BECE JHS"
    },
    "Boakye" => {
      name: "Boakye",
      age: 21,
      school: "BECE University"
    }
  }

  user = users[filter[:user]]

  puts user

  # Implicit return: The last evaluated expression in a method is the return value
  user
end

# findUser(filter: {user: :Alex})

# Methods with keyword arguments with default values
def registerRep(rep_details:, enabled: true, verified: false)
  rep = rep_details

  rep[:enabled] = enabled
  rep[:verified] = verified

  puts rep
end

# registerRep(rep_details: {
#   name: "Alexander Boakye",
#   city: "Kumasi",
#   state: "Ashanti",
#   title: "Mr",
#   dob: Date.new(2001, 1, 10),
#   email: "test@test.com",
#   gender: "Male",
#   mobile: "2331234567890",
#   marital_status: "Single",
#   place_of_birth: "Kumasi",
#   resident_country: "Ghana",
#   first_nationality: "Ghanaian",
#   residential_address: "Kumasi"
# }, verified: true)

# Return values in methods
# Implicit return: The last evaluated expression in a method is the return value
def getUser(name:)
  filter = {user: name}
  user = findUser(filter: filter)

  puts user
end

# getUser(name: "Alex")

# Explicit return
# Using modifier form for conditional

def check_input(num)
  return 0 if num.nil?
  num
end

p check_input(nil)
