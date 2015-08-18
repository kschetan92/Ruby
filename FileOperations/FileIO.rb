require "test/unit"

class FileIO

	def initialize
		@day = []
	end

	def parse_collected_data(file)

		day_max_min_array = []
		temp_spread = []

		file.each_line do |line|
			day_max_min_array << line.split(" ").values_at(0..2)
		end

		day_max_min_array = day_max_min_array.drop(2)
		
		(day_max_min_array.length).times do |index|
			@day[index] = day_max_min_array[index][0].to_i
			temp_spread[index] = day_max_min_array[index][1].to_f - day_max_min_array[index][2].to_f
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