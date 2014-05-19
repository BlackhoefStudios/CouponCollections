# @provides CC::HomeScreen
module CC
	class HomeScreen < PM::TableScreen
		title "Home"
		def table_data
			[{
		    title: "Options",
		    cells: [
		      { title: "Add Coupons", action: :add_coupons, arguments: { }},
		      { title: "View Coupons", action: :view_coupons}
		    ]
		  }]
		end

		def view_coupons()
			open CouponsListScreen.new
		end

	end
end