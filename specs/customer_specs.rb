require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')


class CustomerTest < MiniTest::Test

  def setup
    @customer1 = Customer.new("Helen", 100.0, 35)
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



end
