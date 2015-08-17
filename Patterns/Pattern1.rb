
require "test/unit"

class Pattern1
	def initialize(lines)
		@lines = lines
	end
	
	def print_spaces(current_line)
		" " * (@lines-current_line)
	end

	def printDigits(current_line)
		digit = ""
		max = (2*current_line)-1
		startnum = (current_line**2)-(2*(current_line-1))
		printnum = startnum
		1.upto(max) do  
			result = printnum%10
			printnum+=1
			digit << result.to_s
		end
		digit
	end

	def printLine(current_line)
		line = print_spaces(current_line) + printDigits(current_line)
	end

	def print_triangle
		1.upto(@lines) do |current_line|
			puts printLine(current_line)
		end
	end
end

class TestPattern < Test::Unit::TestCase
	def test_triangle
		triangle = Pattern1.new(5)
		assert_equal("    1", triangle.printLine(1))
		assert_equal("   234", triangle.printLine(2))
		assert_equal("  56789", triangle.printLine(3))
		assert_equal(" 0123456", triangle.printLine(4))
	end
end

triangle = Pattern1.new(4)
triangle.print_triangle