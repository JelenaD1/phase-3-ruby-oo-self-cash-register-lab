class CashRegister

    attr_accessor :total, :discount, :price, :past_transactions, :title
 

  def initialize(discount=nil, total=0)
    @total = total
    @discount = discount 
    @title = []
  end

  def add_item(title, price, quantity = 1)
   self.total = @total + (price * quantity)
   @past_transactions = []
   @past_transactions << price * quantity
   quantity.times {@title << (title)}
  
  end 

  def apply_discount
   if  @discount 
    self.total = self.total - (self.total * (@discount /100.0)).to_i
    "After the discount, the total comes to $#{self.total}." 
   else 
     "There is no discount to apply."
  end 
end 

def items
    @title
   
end 

def void_last_transaction
    @past_transactions.empty? ? self.total = 0.0 :  self.total = @total - @past_transactions.pop
    
end 
   

end 
