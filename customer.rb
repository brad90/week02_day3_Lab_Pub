class Customer

attr_reader :name, :age
attr_accessor :drunkeness, :wallet, :drink_order


  def initialize (name, wallet, age, drink_order = [])
    @name = name
    @wallet = wallet
    @age = age
    @drunkeness = 0
    @drink_order = drink_order
  end

  def paying_for_one_drink(drink_price)
    @wallet -= drink_price
  end


  def asking_for_more_than_one_drink(drink_order_customer)
    @drink_order + drink_order_customer
  end





end
