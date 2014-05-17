# @provides CC::Coupon
# @requires CC::CouponQuantity
module CC
	class Coupon
		attr_reader :quantity
		attr_reader :name
		attr_reader :priceOff
		attr_reader :requiredToBuy

		def initialize(name, reqToBuy, priceOff)
			@name = name
			@priceOff = priceOff
			@requiredToBuy = reqToBuy
		end
		def add(quantity, expirationDate)
			@quantity = CC::CouponQuantity.new(quantity, @priceOff)
		end
	end
end