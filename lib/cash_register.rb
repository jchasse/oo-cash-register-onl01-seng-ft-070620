require 'pry'

class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @discount = discount
    @total = 0  #sets an instance variable @total on initialization to zero
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    # binding.pry
    discount_amount = @total * @discount/100
    @total -= discount_amount
    prints "After the discount, the total comes to #{total}."
  end
end
