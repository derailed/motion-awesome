class Z < UIViewController
  include MotionAwesome

  attr_accessor :comp

  def initialize
    @comp = nil
  end

  def viewDidLoad
    view.setBackgroundColor( 0x000000.uicolor )

    view.on_tap do
      next_ctrl
    end
    view.on_swipe( :left ) do
      next_ctrl
    end
    view.on_swipe( :right ) do
      prev_ctrl
    end
  end

  def viewWillAppear( animated )
    refresh_layout
  end

  def didRotateFromInterfaceOrientation( orientation )
    refresh_layout
  end

  private

  def refresh_layout
    comp.center = center
  end

  def center
    [self.view.frame.size.width/2, self.view.frame.size.height/2]
  end

  def samples
    App.delegate.samples
  end

  def prev_ctrl
    current_index = samples.index(self.class.name)
    clazz = Object.const_get( samples[(current_index-1) % samples.size] )
    self.navigationController.pushViewController( clazz.new, animated: true )
  end

  def next_ctrl
    current_index = samples.index(self.class.name)
    clazz = Object.const_get( samples[(current_index+1) % samples.size] )
    self.navigationController.pushViewController( clazz.new, animated: true )
  end
end
