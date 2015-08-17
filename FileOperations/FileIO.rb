require "test/unit"

class FileIO

	def initialize
		@day = []
	end

	def readFile
		
		file = File.open("/home/chetan/Downloads/weather.txt")
		parse_collected_data(file)
	end

	def parse_collected_data(file)

		min_temp = []
		max_temp = []
		temp_spread = []

		file.each_line do |line|
		@day << line.split(" ").values_at(0)
		max_temp << line.split(" ").values_at(1)
		min_temp << line.split(" ").values_at(2)
		
		end
		
		@day = @day.drop(2)
		min_temp = min_temp.drop(2)
		max_temp = max_temp.drop(2)
		ary_length = @day.length
		
		ary_length.times do |index|
			@day[index] = @day[index][0].to_i
			max_temp[index] = max_temp[index][0].to_f
			min_temp[index] = min_temp[index][0].to_f
			temp_spread[index] = max_temp[index] - min_temp[index]
		end

		find_min_tempSpread(temp_spread)

	end

	def find_min_tempSpread(temp_spread)

		least_temp = temp_spread.min
		index = temp_spread.index(least_temp)
		@day.at(index)
	end
end

FileIO.new.readFile

class FilTest < Test::Unit::TestCase

	def test_dayNumber
		assert_equal(14, FileIO.new.readFile)	
	end
end