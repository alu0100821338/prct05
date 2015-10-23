require_relative "../lib/racional" 
require "test/unit" 

class Test_Fraccion < Test::Unit::TestCase
  def setup
    #    @origen = Fraccion.new(0,0) 
        @unidad = Fraccion.new(3,5)
#	@otro = Fraccion.new(5,5)
#	@otro2 = Fraccion.new(-5,6)
#	@otro3 = Fraccion.new(-5,10)	
  end

#  def tear_down
    # nothing
#  end

  def test_simple
    #    assert_equal("(0,0)", @origen.to_s)
	assert_equal("3/5", @unidad.to_s)
#	assert_equal("3/5", Fraccion.new(3,5).to_s)
	#assert_equal("5,5", @otro.to_s)
	#assert_equal("-5,6", @otro2.to_s)
	#assert_equal("-5,10", @otro3.to_s)

   # assert_equal("(5,5)", (@unidad*5).to_s)
   # assert_equal("(-1,-1)", (-@unidad).to_s)
   # assert_equal("(1,1)", (@origen + @unidad).to_s)
  end

  #def test_type_check
  #	assert_raise(RuntimeError) {Point.new('1','1')}
  #end

  #def test_failure
  #  assert_equal("(5,5)", (@origen * 5).to_s, "Producto escalar")
  #end

end
