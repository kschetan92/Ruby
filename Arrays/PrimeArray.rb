require "test/unit"

class PrimeArray

	def array_sqrt(sqt, i)
		2.upto(sqt) do |k|
			return false if (i % k ) == 0
			return true
		end
	end

	def primeNum(array)
		array.select do |e| 
			if e==1
				false
			else
				sqt = Math.sqrt(e)
				array_sqrt(sqt, e)
			end
		end
	end
end

class TestArray < Test::Unit::TestCase
	
	def test_arrayPrime
		assert_equal([2,3,5,7], PrimeArray.new.primeNum([1,2,3,4,5,6,7,8]))
	end
end