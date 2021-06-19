class Account
  attr_reader :name, :balance
  def initialize(name, balance = 100) #here balance is optional parameter
    @name = name
    @balance = balance
  end
  public

  def display_balance(pin_number)
    if pin_number == @pin
      puts "Balance: #{balance}"
    else
      puts pin_error
    end
  end

  def withdraw(amount, pin_number)
    if pin_number == pin
      balance -= amount
      puts "Withdrew #{amount}. New Balance #{balance}"
    else
      puts pin_error
    end
  end

  private

  def pin
    @pin = 1234
  end
  #private # this "private" is not needed as above one's is also private

  def pin_error
    "Access denied: incorrect PIN."
  end
end

my_account = Account.new("sayan",1_000)
my_account.withdraw(11, 500)
my_account.display_balance(1234)
my_account.withdraw(1234, 500)
my_account.display_balance(1234)
