# @provides CC::CouponsListScreen
# @requires CC::Coupon
# @requires CC::ViewCouponScreen
module CC
	class CouponsListScreen < PM::TableScreen
		title "My Coupons"_

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
			open ViewCouponScreen.new(model: item, title: item.name)
		end
	end
end