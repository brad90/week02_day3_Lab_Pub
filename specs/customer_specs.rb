require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../drink.rb')


class CustomerTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Beer", 4.00, 3.1)
    @drink2 = Drink.new("Wine", 3.00 , 5.0)
    @customer1 = Customer.new("Helen", 100.0, 35,[@drink1, @drink2, @drink2])
  end

  def test_customer_name
    assert_equal("Helen", @customer1.name)
  end

  def test_customer_age
    assert_equal(35, @customer1.age)
  end

  def test_customer_wallet
    assert_equal(100.0, @customer1.wallet)
  end


  def test_paying_for_a_drink
    @customer1.paying_for_one_drink(@drink1.price)
    assert_equal(96.0, @customer1.wallet)
  end

  # def test_asking_for_more_than_one_drink
  #   @customer1.asking_for_more_than_one_drink(@customer1.drink_order)
  #   assert_equal([@drink1, @drink2, @drink2], @customer1.drink_order)
  # end

  def test_paying_for_more_drinks
    @customer1.paying_for_more_drink
    assert_equal(90.0, @customer1.wallet)
  end





end
