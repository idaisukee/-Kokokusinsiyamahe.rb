require 'bundler/setup'
Bundler.require(:default)

require 'date'
require 'Untoutiyaumahe'

class Kokokusinsiyamahe

	ARRAY_NON_LEAP = [
		31, 28, 31,
		30, 31, 30,
		31, 31, 30,
		31, 30, 31
	]

	ARRAY_LEAP = ARRAY_NON_LEAP.map.with_index do |v, k|
		if k == 1 then
			29
		else
			v
		end
	end

  def self.date(yday, leap)
		if leap then
			array = ARRAY_LEAP
		else
			array = ARRAY_NON_LEAP
		end
		untoutiyaumahe = Untoutiyaumahe.untoutiyaumahe(yday, array)
  end

  def self.yday(date, leap)
  end
end
