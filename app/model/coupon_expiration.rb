# @provides CC::CouponExpiration
module CC
	class CouponExpiration
		attr_reader :expires
		attr_reader :dateAdded

		def initialize(expirationDate)
			@expires = expirationDate
			@dateAdded = Time.new
		end
		def timeTillExpiration
			## Need to check results and parse down to days...
			return (@expires - @dateAdded)
		end
	end
end