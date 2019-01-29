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
    @receiver.deposit(@amount)
    @sender.deposit(-@amount)
    @status = "complete"
  end
  
  def reverse_transfer
    
  end
  
end
