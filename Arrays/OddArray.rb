require "test/unit"

class OddArray
	def findOdd(array)
		array.reject { |e| e.even? }
	end
end

class TestOddArray < Test::Unit::TestCase

def test_odd
	assert_equal([3,5,7,9], OddArray.new.findOdd([2,3,4,5,6,7,8,9,10]))
end

end	