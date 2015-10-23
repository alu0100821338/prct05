require_relative "../lib/racional" 
require "test/unit" 

class Test_Fraccion < Test::Unit::TestCase

  def test_simple
	assert_equal("1/1", Fraccion.new(1, 1).to_s)
	assert_equal("1/5", Fraccion.new(1, 5).to_s)
  assert_equal("5/3", Fraccion.new(5, 3).to_s)
  
   # assert_equal("(2,1)", (Fraccion.new(1, 1) + Fraccion.new(1, 1)).to_s)
   # assert_equal("(1,1)", (Fraccion.new(1, 6) + Fraccion.new(5, 6)).to_s)
  end

end
