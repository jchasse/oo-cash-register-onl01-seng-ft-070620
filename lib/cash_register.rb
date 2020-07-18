require 'pry'

class CashRegister

  attr_accessor :total, :discount, :item_list, :last_item_price

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @item_list = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times {@item_list << title}
    @last_item_price = price
  end

  def apply_discount
    if @discount != 0
      discount_amount = @total * @discount/100
      @total -= discount_amount
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @item_list
  end

  def void_last_transaction
    @total -= last_item_price
    @item_list.pop
  end
end
