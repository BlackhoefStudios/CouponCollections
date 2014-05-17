# @provides CC::CouponsList
# @requires CC::Coupon
module CC
	class CouponsList < PM::TableScreen
		title "My Coupons"

		def table_data
			[{
				title: "Existing Coupons",
				cells: [
					{title: "Chex Mix BOGO", action: :view_coupon, arguments: {
						coupon: Coupon.new("Check Mix BOGO", 2, 5.00)
					}}
				]

			}]
		end
		def view_coupon(args={})
			item = args[:coupon]
			PM.logger.info item.name
			PM.logger.info item.priceOff
			PM.logger.info item.requiredToBuy
		end
	end
end