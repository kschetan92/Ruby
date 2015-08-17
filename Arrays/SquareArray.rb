require "test/unit"

class SquareArray
	def arraySquare(array)
		array.map { |x| x*x }		
	end
end

class TestArray < Test::Unit::TestCase

	def test_ArrSquare
		assert_equal([4,9,16], SquareArray.new.arraySquare([2,3,4]))
	end

end