class CashRegister
  attr_accessor :total, :title, :discount, :items, :last_transaction
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []

  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    @last_transaction = self.total
    quantity.times do
      self.items << title
    end
  end

  def apply_discount
    if discount != 0
     self.total -= @discount*10
    "After the discount, the total comes to $#{self.total}."
    else
    "There is no discount to apply."
    end
  end

def void_last_transaction
  self.total -= @last_transaction
end

end
