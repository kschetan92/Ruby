
require "test/unit"

class Pattern2
	
	def initialize(no_of_lines)
		@no_of_lines = no_of_lines
	end

	def add_spaces(current_line)
		" " * (@no_of_lines-current_line)
	end

	def print_digits(current_line)
		digits = ""
		(current_line).upto(2*current_line-1) do |n|
			digits << (n%10).to_s
		end
		digits
	end

	def print_line(current_line)
		line = add_spaces(current_line) + print_digits(current_line)
		line + line.chop.reverse
	end

	def print_triangle
		1.upto(@no_of_lines) do |current_line|
			puts print_line(current_line)
		end
	end
end



class TestPattern < Test::Unit::TestCase
	def test_Space
		triangle = Pattern2.new(5)
		assert_equal("    ", triangle.add_spaces(1))
	end
	
	def test_digits
	  	triangle = Pattern2.new(5)
	    assert_equal("1", triangle.print_digits(1))
	    assert_equal("56789", triangle.print_digits(5))
	end
	
	def test_complete_line
	    triangle = Pattern2.new(5)
	    assert_equal("    1    ", triangle.print_line(1))
	    assert_equal("   232   ", triangle.print_line(2))
	    assert_equal("  34543  ", triangle.print_line(3))
	end
end

pattern = Pattern2.new(15)
pattern.print_triangle