class Computer
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[@username] = password
  end
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{@username} has created #{filename} at #{time}"
  end
  def self.get_users
    @@users
  end
end

my_computer = Computer.new("sayan", "Idolman1")
my_computer.create("info.txt")
puts Computer.get_users