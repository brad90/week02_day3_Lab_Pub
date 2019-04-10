require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')


class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Beer", 4.00 , 3.1)
    @drink2 = Drink.new("Wine", 3.00 , 5.0)
    @customer( )
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
    assert_equal(108, @pub1.till)
  end




end
