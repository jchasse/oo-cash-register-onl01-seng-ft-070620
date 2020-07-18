require 'pry'

class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @discount = discount
    @total = 0  #sets an instance variable @total on initialization to zero
  end

  def add_item(title, price, quantity = 0)
    @total += price
  end


end
