# @requires Layouts::HomeScreenLayout
# @provides CC::HomeScreen
module CC
	class HomeScreen < PM::Screen
		title "Home"
		def will_appear
	    # We only want to create the views once. Here's an easy way:
	    @layout = Layouts::HomeScreenLayout.new
	    self.view = @layout.view	    
	  end
	end
end