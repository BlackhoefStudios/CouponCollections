# @requires CC::HomeScreen
module CC
	class AppDelegate < PM::Delegate
	  def on_load(app, options)
	  	PM.logger.info "app on_load"
    	open HomeScreen.new(nav_bar: true)
  	end
	end
end