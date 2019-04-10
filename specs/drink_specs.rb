require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')


class DrinkTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Beer", 4.00 , 3.1)
    @drink2 = Drink.new("Wine", 3.00 , 5.0)
  end

  def test_drink_name__for_beer
    assert_equal("Beer", @drink1.name)
  end

  def test_drink_name__for_wine
    assert_equal("Wine", @drink2.name)
  end

  def test_drink_price__for_beer
    assert_equal(4.00, @drink1.price)
  end

  def test_drink_units__for_beer
    assert_equal(3.1, @drink1.units_of_alcohol)
  end

end
