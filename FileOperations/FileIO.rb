require "test/unit"

class FileIO

	def initialize
		@day = []
	end

	def parse_collected_data(file)

		max_min_temp = []
		temp_spread = []

		file.each_line do |line|
		max_min_temp << line.split(" ").values_at(0..2)
		
		end

		max_min_temp = max_min_temp.drop(2)
		
		max_min_temp.length.times do |index|
			@day[index] = max_min_temp[index][0].to_i
			temp_spread[index] = max_min_temp[index][1].to_f - max_min_temp[index][2].to_f
		end

		find_day_minTempSpread(temp_spread)

	end

	def find_day_minTempSpread(temp_spread)

		index = temp_spread.index(temp_spread.min)
		@day.at(index)
	
	end
end

FileIO.new.parse_collected_data(File.open("/home/chetan/Downloads/weather.txt"))

class FilTest < Test::Unit::TestCase

	def test_dayNumber
		assert_equal(14, FileIO.new.parse_collected_data(File.open("/home/chetan/Downloads/weather.txt")))	
	end
end