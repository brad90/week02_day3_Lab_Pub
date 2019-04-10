class Customer

attr_reader :name, :age
attr_accessor :drunkenness, :wallet, :drink_order


  def initialize (name, wallet, age, drink_order = [])
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = 0
    @drink_order = drink_order
  end

  def paying_for_one_drink(drink_price)
    @wallet -= drink_price
  end


  # def asking_for_more_than_one_drink
  #   @drink_order + drink_order_customer
  # end

  def paying_for_more_drink
    for drink in @drink_order
      @wallet -= drink.price
    end
  end

  def giving_money_to_pub
    drink_total = 0.0
    for drink in @drink_order
      drink_total += drink.price
    end
    return drink_total
  end

  def can_customer_afford_it
    return true if @wallet >= 10.0
    return false
  end


  def is_customer_old_enough
    return true if @age >= 18
    return false
  end

  def adding_units_to_customer
    for drink in @drink_order
      @drunkenness += drink.units_of_alcohol
    end
  end

  def is_customer_drunk
     if @drunkenness >= 2.0
       return "You're barred!"
     else
       return "Buy more drink!"
     end
  end








end
