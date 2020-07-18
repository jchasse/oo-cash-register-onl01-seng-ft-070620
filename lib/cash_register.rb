require 'pry'

class CashRegister

  attr_accessor :total, :emp_discount

  def initialize(emp_discount = 0)
e    @emp_discount = emp_discount
    @total = 0  #sets an instance variable @total on initialization to zero
  end



end
