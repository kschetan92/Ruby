require "test/unit"

class PrimeArray

	def array_sqrt(sqt, i)
		2.upto(sqt) do |k|
			return false if (i % j ) == 0
			end
			return true
		end
	end

	def primeNum(array)
		array.select do |e| 
			if e==1
				false
			else
				sqt = Math.sqrt(i)
				array_sqrt(sqt, i)
		end
	end
end

class TestArray < Test::Unit::TestCase
	
	def test_arrayPrime
		assert_equal([2,3,5,7], PrimeArray.new.primeNum([1,2,3,4,5,6,7,8]))
	end
end