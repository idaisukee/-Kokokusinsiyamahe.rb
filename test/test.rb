require 'bundler/setup'
Bundler.require
base_dir = File.expand_path(File.join(File.dirname(__FILE__), ".."))
lib_dir  = File.join(base_dir, "lib")
test_dir = File.join(base_dir, "test")

require(File.join(lib_dir, 'Kokokusinsiyamahe.rb'))
class SampleTest < Test::Unit::TestCase
	def test_date_leap
#		assert_equal([0, 0], Kokokusinsiyamahe.date(0, true))
		assert_equal([0, 1], Kokokusinsiyamahe.date(1, true))
	end
			
	def test_date_non_leap
	end

	def test_yday_leap
	end

	def test_yday_non_leap
	end
end
