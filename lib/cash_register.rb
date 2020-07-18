require 'pry'

class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @discount = emp_discount
    @total = 0  #sets an instance variable @total on initialization to zero
  end



end
