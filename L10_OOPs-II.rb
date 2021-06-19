# 10. Object Oriented Programming - II

# 10.1. Public and Private

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  public    # This method can be called from outside the class.

  def about_me
    puts "I'm #{@name} and I'm #{@age} years old!"
  end

  private   # This method can't!

  def bank_account_number
    @account_number = 12345
    puts "My bank account number is #{@account_number}."
  end
end

eric = Person.new("Eric", 26)
eric.about_me
eric.bank_account_number

# 10.2. attr_reader and attr_writer
# as we can't directly read and write data directly, will require method, so that's the convenient way

class Person
  attr_reader :name
  attr_writer :job
  def initialize(name, job)
    @name = name
    @job = job
  end
=begin
  For attr_reader,
  def name
    @name
  end
  For attr_writer
  def job=(new_job)
    @job = new_job
    end
=end
end

# 10.3. attr_accessor
# when both reader and writer needed we use accessor, that's written as
# attr_accessor :job

# 10.4. Modules
# Module is a toolbox that contains a set methods and constants, modules can’t create instances and can’t have subclasses

module Circle

  PI = 3.141592653589793

  def Circle.area(radius)
    PI * radius**2
  end

  def Circle.circumference(radius)
    2 * PI * radius
  end
end

# 10.5. Scope Resolution Operator(::)

puts Math::PI   #to look inside the Math module to get that PI, not Circle's PI
puts Circle::PI # now it will find circle's pi

# 10.6. require keyword
# module, not present in the interpreter, need to be explicitly brought in

require 'date'
puts Date.today

# 10.7. include keyword
# instead of using Math::cos, we can directly use cos if we "include Math" in the class

class Angle
  include Math
  attr_accessor :radians
  def initialize(radians)
    @radians = radians
  end
  def cosine
    cos(@radians)
  end
end
acute = Angle.new(1)
acute.cosine

# 10.8. Using method in class

module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump

# extend keyword
# include: mixes in specified module methods as instance methods in the target class
# extend: mixes in specified module methods as class methods in the target class

module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now
