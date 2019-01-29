class Transfer
  attr_accessor :sender, :receiver, :status
  attr_reader :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    @sender.valid? && @receiver.valid? ? true : false
  end
  
  def execute_transaction
    if self.valid? == true
      if @status == "pending"
        @receiver.deposit(@amount)
        @sender.deposit(-@amount)
        @status = "complete"
      end
    else
      "Transaction rejected. Please check your account balance."
    end
  end
  
  def reverse_transfer
    
  end
  
end
