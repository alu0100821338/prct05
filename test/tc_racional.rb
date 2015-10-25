require_relative "../lib/racional" 
require "test/unit" 

class Test_Fraccion < Test::Unit::TestCase

  def test_simple
	assert_equal("1/1", Fraccion.new(1, 1).to_s)
	assert_equal("3/5", Fraccion.new(3, 5).to_s)
  	assert_equal("2/3", Fraccion.new(4, 6).to_s)
	assert_equal("-2/3", Fraccion.new(-4, 6).to_s)
  end

  def test_suma
	assert_equal("2/1", (Fraccion.new(1, 1)+Fraccion.new(1, 1)).to_s)
	assert_equal("7/2", (Fraccion.new(3, 2)+Fraccion.new(4, 2)).to_s)
	assert_equal("-1/2", (Fraccion.new(3, 2)+Fraccion.new(-4, 2)).to_s)
	assert_equal("1/1", (Fraccion.new(6,8 )+Fraccion.new(2, 8)).to_s)
	assert_equal("29/10", (Fraccion.new(7, 5)+Fraccion.new(3, 2)).to_s)
  end

  def test_resta
	assert_equal("1/1", (Fraccion.new(15, 6)-Fraccion.new(9, 6)).to_s)
	assert_equal("13/6", (Fraccion.new(3, 2)-Fraccion.new(-2, 3)).to_s)
	assert_equal("-4/3", (Fraccion.new(1, 3)-Fraccion.new(5, 3)).to_s)
  end

  def test_producto
	assert_equal("1/6", (Fraccion.new(2, 3)*Fraccion.new(1, 4)).to_s)
	assert_equal("-1/6", (Fraccion.new(-2, 3)*Fraccion.new(1, 4)).to_s)
	assert_equal("1/6", (Fraccion.new(-2, 3)*Fraccion.new(-1, 4)).to_s)
  end

  def test_division
	assert_equal("9/-4", (Fraccion.new(3, 2)/Fraccion.new(-2, 3)).to_s)
	assert_equal("1/1", (Fraccion.new(1, 2)/Fraccion.new(1, 2)).to_s)
	assert_equal("-3/2", (Fraccion.new(-1, 2)/Fraccion.new(1, 3)).to_s)
  end


end
