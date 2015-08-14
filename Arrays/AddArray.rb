
require "test/unit"

class AddArray

	def sumArray(array_to_Add)
		array_to_Add.inject(0) { |sum, i| sum + i}
	end
end

class TestArray < Test::Unit::TestCase
	def test_Sum
		assert_equal(15, AddArray.new.sumArray([1,2,3,4,5]))
	end
end