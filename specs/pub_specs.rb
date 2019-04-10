require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')


class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Beer", 4.00 , 3.1)
    @drink2 = Drink.new("Wine", 3.00 , 5.0)
    @customer1 = Customer.new("Helen", 100.0, 35,[@drink1, @drink2, @drink2])
    @pub1 = Pub.new("The Royal Boozer", 100.0, [@drink1.name, @drink2.name])
  end

  def test_pub_name
    assert_equal("The Royal Boozer", @pub1.name)
  end

  def test_till_monies
    assert_equal(100.0, @pub1.till)
  end

  def test_drinks_in_bar_by_name
    assert_equal(["Beer", "Wine"], @pub1.drinks)
  end

  def test_money_removed_from_customer_wallet
    customer_pay = @customer1.giving_money_to_pub
    @pub1.money_removed_from_customer_wallet(customer_pay)
    assert_equal(110.0, @pub1.till)
  end

  def test_drink_stock_number
    drink_stock = @pub1.stock[:glasses_of_wine]
    @pub1.drink_in_stock_total(drink_stock)
    assert_equal(150,drink_stock)
  end

  def test_stock_reduced_after_purchase
    drink_order = @customer1.drink_order
    @pub1.stock_reduced_after_purchase(drink_order)
    assert_equal(148,@pub1.stock[:glasses_of_wine])
  end

  # def test_is_customer_too_drunk
  #   assert_equal(true,@customer1.)
  # end



end
