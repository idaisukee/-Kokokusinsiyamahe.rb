require 'bundler/setup'
Bundler.require(:default)

require 'date'

class Kokokusinsiyamahe

	ARRAY_NON_LEAP = [
		31, 28, 31,
		30, 31, 30,
		31, 31, 30,
		31, 30, 31
	]
	ARRAY_LEAP = [
		31, 29, 31,
		30, 31, 30,
		31, 31, 30,
		31, 30, 31
	]
  def self.date(yday, leap)
		if leap then
			array = ARRAY_LEAP
		else
			array = ARRAY_NON_LEAP
		end
		untoutiyaumahe = Untoutiyaumahe.untoutiyaumahe(yday, array)
		month = untoutiyaumahe[0]
		mday = untoutiyaumahe[1]
		[month, mday]
		
		untoutiyaumahe
  end

  def self.yday(date, leap)
  end
end

p Kokokusinsiyamahe.date(1, true)
p Kokokusinsiyamahe.date(40, true)
p Kokokusinsiyamahe.date(365, true)
p Kokokusinsiyamahe.date(366, true)
p Kokokusinsiyamahe.date(400, true)
p Kokokusinsiyamahe.date(4000, true)
