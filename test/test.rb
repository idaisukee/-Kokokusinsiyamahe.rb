require 'bundler/setup'
Bundler.require
require 'date'
base_dir = File.expand_path(File.join(File.dirname(__FILE__), ".."))
lib_dir  = File.join(base_dir, "lib")
test_dir = File.join(base_dir, "test")

class SampleTest < Test::Unit::TestCase
	def test_date_leap
		assert_equal([0, 1], Kokokusinsiyamahe.date(1, true))
		assert_equal([0, 30], Kokokusinsiyamahe.date(30, true))
		assert_equal([1, 0], Kokokusinsiyamahe.date(31, true))
		assert_equal([1, 1], Kokokusinsiyamahe.date(32, true))
		start = DateTime.new(2020, 1, 1, 0, 0, 0, Rational(9, 24))
		Range.new(start, start + 366).each do |date_time|
			assert_equal(
				[date_time.month - 1, date_time.day - 1],
				Kokokusinsiyamahe.date(date_time.yday - 1, true)
			)
		end
	end

	def test_date_non_leap
		assert_equal([0, 1], Kokokusinsiyamahe.date(1, false))
		assert_equal([0, 30], Kokokusinsiyamahe.date(30, false))
		assert_equal([1, 0], Kokokusinsiyamahe.date(31, false))
		assert_equal([1, 1], Kokokusinsiyamahe.date(32, false))
		start = DateTime.new(2021, 1, 1, 0, 0, 0, Rational(9, 24))
		Range.new(start, start + 365).each do |date_time|
			assert_equal(
				[date_time.month - 1, date_time.day - 1],
				Kokokusinsiyamahe.date(date_time.yday - 1, false)
			)
		end
	end

	def test_yday_leap
	end

	def test_yday_non_leap
	end
end
