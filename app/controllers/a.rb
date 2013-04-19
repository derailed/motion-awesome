class A < Common
  
  def viewDidLoad    
    label( :flag, size: 200 ) do |label|
      label.color           = 0x04B0FB.uicolor
      label.backgroundColor = UIColor.clearColor
      label.frame           = CGRectMake( 0, 0, 200, 200 )
      label.center          = [self.view.frame.size.width / 2, self.view.frame.size.height / 2]
      self.view.addSubview(label)
    end    
  end
    
  private
  
    
  # def viewDidLoad
  #     view                 = UIScrollView.alloc.init
  #     view.backgroundColor = UIColor.whiteColor
  #     # view.contentSize     = [320, 4*200]
  # 
  # 
  #     spacer   = 40    
  #     x_offset = 10
  #     size     = 24    
  #     offset   = 30
  #     
  #     button( :glass, size: 40, text:%q{Hit Me!} ) do |button|
  #       # button.titleLabel.textColor = UIColor.redColor
  #       # button.titleLabel.font = UIFont.fontWithName( 'Zapfino', size:size )
  #       # button.setBackgroundImage( UIImage.imageNamed( 'background.png'), forState: UIControlStateNormal )
  #       button.styleClass = 'awesome-button'
  #       button.contentEdgeInsets = UIEdgeInsetsMake( 10, 0, 0, 0 )
  #       button.frame = CGRectMake( x_offset, offset, 300, size+40 )
  #       button.addTarget( self,
  #                         action: "callback:",
  #                         forControlEvents: UIControlEventTouchUpInside )      
  #       self.view.addSubview(button)
  #     end         
  # 
  #     offset += size + spacer   
  #     button = UIButton.buttonWithType( UIButtonTypeRoundedRect )
  #     button.styleClass = 'fred'
  #     attr_text = NSMutableAttributedString.alloc.initWithString( "Fred", attributes:nil )
  #     button.setAttributedTitle( attr_text, forState:UIControlStateNormal )
  #     
  #     # button.setTitle( "Freddy", forState: UIControlStateNormal )
  #     button.frame = CGRectMake( x_offset, offset, 300, size+40 )    
  #     self.view.addSubview( button )    
  #     
  #     offset += size + spacer    
  #     button( :bullhorn ) do |button|
  #       button.titleLabel.color = UIColor.yellowColor
  #       # button.titleLabel.font  = UIFont.fontWithName( 'Zapfino', size:size )
  #       button.frame = CGRectMake( x_offset, offset, 300, size+20 )
  #       button.addTarget( self,
  #                         action: "callback:",
  #                         forControlEvents: UIControlEventTouchUpInside )      
  #       self.view.addSubview(button)
  #     end         
  #     
  #     offset += size + spacer   
  #     label( :glass, text:%q{Hello World!} ) do |label|
  #       label.color = UIColor.redColor
  #       label.font  = UIFont.fontWithName( 'AmericanTypewriter', size:size )
  #       label.frame = CGRectMake( x_offset, offset, 320, size+20 )
  #       self.view.addSubview(label)
  #     end         
  #         
  #     size = 40    
  #     offset += size + spacer   
  #     label( :bullhorn, size: size ) do |label|
  #       label.frame = CGRectMake( x_offset, offset, 320, size )
  #       label.font  = UIFont.fontWithName( 'Futura', size:size )
  #       label.color = UIColor.blueColor
  #       self.view.addSubview(label)
  #     end
  #     
  #     offset += size + spacer
  #     label       = UILabel.alloc.initWithFrame( CGRectMake( x_offset, offset, 320, size+40) )
  #     label.text  = "BumbleBee Tuna"
  #     label.color = UIColor.greenColor    
  #     label.font  = UIFont.fontWithName( 'Zapfino', size:20 )
  #     self.view.addSubview( label )
  #         
  #     size = 16
  #     offset += size + spacer       
  #     text_font = UIFont.fontWithName( 'Zapfino', size:16 )   
  #     label      = UILabel.alloc.initWithFrame( CGRectMake( x_offset, offset, 320, size+10) )
  #     attrs = { NSFontAttributeName => text_font, NSForegroundColorAttributeName => UIColor.whiteColor }    
  #     attr_text = NSMutableAttributedString.alloc.initWithString( 
  #       "Swimming Ducks", attributes:attrs )
  #     label.setAttributedText( attr_text, forState:UIControlStateNormal )
  #     label.color = UIColor.whiteColor    
  #     label.font = UIFont.fontWithName( 'Futura', size:size )
  #     self.view.addSubview( label )    
  #   end
  # 
  # def callback( button )
  #   puts "Button was pressed!"
  # end
end