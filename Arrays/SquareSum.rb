require "test/unit"

class SquareSum

	def arraySquare(array)
		array.map { |x| x*x }		
	end

	def sumArray(array_to_Add)
		array_to_Add.inject(0) { |sum, i| sum + i}
	end
end

class TestArray < Test::Unit::TestCase
	
	def test_ArrSqrSum 
		sqr = SquareSum.new.arraySquare([2,3,4])
		assert_equal(29, SquareSum.new.sumArray(sqr))
	end
	
end