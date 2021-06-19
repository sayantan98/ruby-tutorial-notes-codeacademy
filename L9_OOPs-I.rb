# 9. Object Oriented Programming-I

# 9.1. Class

class Person
  def initialize(name) # it is the constructor in ruby
    @name = name
  end
end

# 9.2. Instantiating a class

matz = Person.new("Yukihiro")

# 9.3. Types of variable (Global, Instance, Class Variable)

# Till yet we have used local variables

class Computer
  $manufacturer = "Mango Computer, Inc." # it's global variable
  @@files = {hello: "Hello, world!"}     # it's class/static variable (same value across all class instances)
  def initialize(username, password)
    @username = username              # it's instance variable (different values for each object instance.)
    @password = password
  end
  def current_user
    @username
  end
  def self.display_files
    # it's a static method (can only have static members)
    @@files
  end
end
# Make a new Computer instance:
hal = Computer.new("Dave", 12345)
puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.
puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.
puts "Files: #{Computer.display_files}" # as static, can be accessed without creating object/instance
# @@files belongs to the Computer class.

# 9.4. Inheritance

class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError
end

err = SuperBadError.new
err.display_error

# 9.5. Super keyword

class Creature
  def initialize(name)
    @name = name
  end

  def fight
    return "Punch to the chops!"
  end
end

class Dragon < Creature
  def fight
    puts "Instead of breathing fire..."
    super
  end
end

dr = Dragon.new ("Dragon")
puts dr.fight


