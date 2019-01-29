class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def intialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
end
