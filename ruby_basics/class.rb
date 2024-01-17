class User
  # class variables and functions

  @@count = 0

  def self.delete
    @@count -= 1
  end

  def initialize(first_name:, last_name:, age:)
    @first_name = first_name
    @last_name = last_name
    @age = age

    @@count += 1
  end

  # short way
  # getting
  attr_reader :age

  # setting
  # attr_writer :first_name, :last_name, :age

  # get getter and setter automatically
  attr_accessor(:first_name, :last_name)

  # long way of setting and getting
  # setting

  # def name=(new_name)
  #   @name = new_name
  # end

  # getting
  # def name
  #   @name
  # end
end

user = User.new(first_name: "Alexander", last_name: "Boakye", age: 25)

puts "#{user.first_name} #{user.last_name}: #{user.age}"

user.last_name = "Krapopolis"

puts user.last_name

user.age = 16

puts user.age
