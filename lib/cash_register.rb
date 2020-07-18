require 'pry'

class CashRegister

  item_list = []

  attr_accessor :total, :discount, :item_list

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    # binding.pry
    # if @discount == 0
    #   "There is no discount to apply."
    end

  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @item_list << title
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


end
