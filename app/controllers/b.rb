class B < Z
  def viewDidLoad
    @comp = label( :volume_up, text:"Simply Awesome!" ) do |label|
      label.color           = UIColor.redColor
      label.backgroundColor = UIColor.clearColor
      label.font            = UIFont.fontWithName( 'AmericanTypewriter', size:30 )
      label.textAlignment   = NSTextAlignmentCenter
      label.frame           = CGRectMake( 0, 0, 300, 50 )
      label.center          = center
      self.view.addSubview(label)
    end
    super
  end
end
