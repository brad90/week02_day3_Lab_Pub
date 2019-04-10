class Pub

attr_reader :name, :till, :drinks
attr_accessor :stock



  def initialize (name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
    @stock = {glasses_of_wine:150,
      bottles_of_beer:500}
  end

  def money_removed_from_customer_wallet(customer_pay)
    @till += customer_pay
  end

  def drink_in_stock_total(stock_check)
    return  @stock[stock_check]
  end

  def stock_reduced_after_purchase(drink_order)
    for drink in drink_order
     if drink.name == "Wine"
       @stock[:glasses_of_wine] -= 1
     end
     if drink.name == "Beer"
      @stock[:bottles_of_beer] -= 1
     end
    end
  end



end
