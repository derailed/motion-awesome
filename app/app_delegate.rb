include SugarCube::Adjust

class AppDelegate
  attr_reader :samples
  
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    return true if RUBYMOTION_ENV == 'test'
        
  	@window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    nav = UINavigationController.alloc.initWithRootViewController( A.new )
    @window.rootViewController = nav    
    @window.rootViewController.wantsFullScreenLayout = true
    
    @window.makeKeyAndVisible

    nav.setNavigationBarHidden( true, animated:true )

    setup_appearance

    @samples = %w(A B C D E)
        
    true
  end
  
  def alert( message )
    WCAlertView.showAlertWithTitle( "Motion-Awesome", message:message, 
      customizationBlock: ->(alertView) do
        ;
      end,
      completionBlock: ->(buttonIndex, view) do
        ;
      end,
      cancelButtonTitle:"Roger that!", otherButtonTitles:nil )
  end
  
  private
    
  def setup_appearance
    UILabel.appearance.setBackgroundColor( UIColor.clearColor )
    style_alerts
  end
  
  def style_alerts
    WCAlertView.setDefaultCustomiaztonBlock ->(alertView) do
      alertView.labelTextColor    = UIColor.colorWithRed( 103, green:135, blue:221, alpha:1.0 )
      alertView.labelShadowColor  = UIColor.colorWithRed(68.0/255, green:114.0/255, blue:221.0/255, alpha:0.2 )
      alertView.buttonTextColor   = UIColor.colorWithRed(103.0, green:135.0, blue:221.0, alpha:1.00 )
      alertView.buttonShadowColor = UIColor.colorWithRed( 68.0/255, green:114.0/255, blue:221.0/255, alpha:1.0)

      topGradient    = UIColor.colorWithRed(50.0/255, green:50.0/255, blue:50.0/255, alpha:0.5 )
      middleGradient = UIColor.colorWithRed(0.0/255, green:0.0/255, blue:0.0/255, alpha:0.2 )
      bottomGradient = UIColor.colorWithRed(50.0/255, green:50.0/255, blue:50.0/255, alpha:0.5 )
      alertView.gradientColors = [topGradient,middleGradient,bottomGradient]

      alertView.outerFrameColor = UIColor.colorWithRed( 103.0/255, green:135.0/255, blue:221.0/255, alpha:1.0)
    end
  end
  
end