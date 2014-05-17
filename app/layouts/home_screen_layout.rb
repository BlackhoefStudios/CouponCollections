# @requires MotionKit::Layout
# @provides Layouts::HomeScreenLayout
module Layouts
  class HomeScreenLayout < MotionKit::Layout
  	def layout
      add UILabel, :label
      @button = add UIButton, :button
    end

    def label_style
      text 'Hi there! Welcome to MotionKit'
      font UIFont.fontWithName('Comic Sans', size: 24)
      sizeToFit
      # note: there are better ways to set the center, see the frame helpers below
      center [CGRectGetMidX(superview.bounds), CGRectGetMidY(superview.bounds)]
      text_alignment UITextAlignmentCenter
      text_color :black.uicolor
      background_color 
      # if you prefer to use shorthands from another gem, you certainly can!
      background_color :white.uicolor   # from SugarCube
    end

    def button_style
      # this will call 'setTitle(forState:)' via a UIButton helper
      title 'Press it!'
      background_color :white.uicolor
      sizeToFit
      # this shorthand is much better!  More about frame helpers below.
      center ['50%', '50% + 50']
      on(:touch) {
        PM.logger.info "Button touched!"
      }
    end
  end
end