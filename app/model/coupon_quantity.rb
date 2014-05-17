# @provides CC::CouponQuantity
module CC
	class CouponQuantity
		attr_reader :value
		attr_reader :expiration

		def initialize(count, priceOffPer, expiration)
			@count = count
			@priceOffPer = priceOffPer
			@expiration = expiration
			valueChanged
		end

		def subtract(toSubtract)
			@count -= toSubtract
			valueChanged
		end
		def add(toAdd)
			@count += toAdd
			valueChanged
		end
		def valueChanged
			@value = @count * priceOffPer
		end
		def to_s
			return "$" + @value
		end
	end
end