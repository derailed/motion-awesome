class D < Z
  def viewDidLoad
    @comp = button( :legal, size: 40, text:%q{Hit me!} ) do |button|
      button.titleLabel.textColor = 0xFB3223.uicolor
      button.titleLabel.font      = UIFont.fontWithName( 'GillSans', size:30 )

      button.setBackgroundImage( UIImage.imageNamed( 'button-bg.png'),
                                 forState: UIControlStateNormal )
      button.layer.cornerRadius  = 10
      button.layer.masksToBounds = true

      button.frame             = CGRectMake( 0, 0, 180, 60 )
      button.center            = center
      button.addTarget( self,
                        action: "callback:",
                        forControlEvents: UIControlEventTouchUpInside )
      self.view.addSubview( button )
    end
    super
  end

  private

  def callback( button )
    App.delegate.alert "You're a good citizen..."
  end
end
