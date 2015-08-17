require "test/unit"

class FileIO

	def initialize
		
		@day = []
		@min_temp = []

	end

	def readFile
		
		file = File.open("/home/chetan/Downloads/weather.txt")
		parsecollected_data(file)
	end

	def parsecollected_data(file)

		file.each_line do |line|
		@day << line.split(" ").values_at(0)
		@min_temp << line.split(" ").values_at(2)
		end
		
		@day = @day.drop(2)
		@min_temp = @min_temp.drop(2)
		
		ary_length = @day.length
		ary_length.times do |index|
			@day[index] = @day[index][0].to_i
			@min_temp[index] = @min_temp[index][0].to_f
		end

		find_min_temp(@min_temp)

	end

	def find_min_temp(min_temp)

		least_temp = min_temp.min
		index = min_temp.index(least_temp)
		@day.at(index)
	end
end

class FilTest < Test::Unit::TestCase

	def test_dayNumber
		assert_equal(9, FileIO.new.find_day_number)	
	end
end



FileIO.new.find_day_number
