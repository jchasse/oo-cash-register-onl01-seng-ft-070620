require 'pry'

class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    if discount = 0
      ""

    end

  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    discount_amount = @total * @discount/100
    @total -= discount_amount
    "After the discount, the total comes to $#{@total}."
  end
end
