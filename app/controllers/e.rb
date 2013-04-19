class E < Z
  def viewDidLoad       
    @comp = button( :github, size:35, text:%q{Fork it!}, color:0xD6FF18.uicolor, type: :custom ) do |button|
      button.titleLabel.textColor = 0x2D31CE.uicolor
      button.titleLabel.font      = UIFont.fontWithName( "Vermin Vibes Out Of Ink", size:55 )
    
      button.setBackgroundImage( UIImage.imageNamed( 'button-bg.png'), forState: UIControlStateNormal )      
      button.layer.cornerRadius  = 5
      button.layer.masksToBounds = true
            
      button.frame             = CGRectMake( 0, 0, 300, 70 )
      button.center            = center
      button.contentEdgeInsets = UIEdgeInsetsMake( 0, 0, 0, 0 )
      button.addTarget( self,
                        action: "callback:",
                        forControlEvents: UIControlEventTouchUpInside ) 
      self.view.addSubview( button )                  
    end   
    super
  end
  
  private
    
	def callback( button )
	  App.delegate.alert "github.com/derailed/motion-awesome"
	end
end