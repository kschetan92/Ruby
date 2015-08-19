
class FileGradleIO

	def initialize(*args)
		@file1 = args[0]
		@file2 = args[1]
	end

	def parse_collected_data(section, versionCode, versionName)

		mch = /#{section}.*?versionCode( )*(=)*( )*(\S+).*?versionName( )*(=)*( )*(\S+)/m
		mch.match(@file1)
		puts "#{$4} #{$8}"
		mch.match(@file2)
		puts "#{$4} #{$8}"
	end
end

file1 = "/home/chetan/Downloads/build.gradle"
file2 = "/home/chetan/Downloads/build1.gradle"

FileGradleIO.new(File.read(file1),File.read(file2)).parse_collected_data("PROD", "1.2.0", "2.3.4")