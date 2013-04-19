class Common < UIViewController
  include MotionAwesome
   
  def viewWillAppear( animated )        
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
  
  private

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