# @requires Layouts::HomeScreenLayout
# @provides CC::HomeScreen
module CC
	class HomeScreen < PM::TableScreen
		title "Home"
		def table_data
			[{
		    title: "Northwest States",
		    cells: [
		      { title: "Add Coupons", action: :add_coupons, arguments: { }},
		      { title: "View Coupons", action: :view_coupons, arguments: { }}
		    ]
		  }]
		end

		def view_coupons(args={})
			open CouponsList.new
		end

	end
end