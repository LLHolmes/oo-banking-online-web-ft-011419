class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def deposit
  end
  
  def display_balance
    "#{@balance}"
  end
  
  def valid?
    true if @status == "open" && @balance > 0
  end
  
  def close_account
    @status = "closed"
  end

end
