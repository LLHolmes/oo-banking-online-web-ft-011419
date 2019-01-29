class Transfer
  attr_reader :sender, :receiver, :amount, :status
  
  def intitialize#(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
end
