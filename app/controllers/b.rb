class B < Common
  def viewDidLoad
    label( :volume_up, text:"Simply Awesome!" ) do |label|
      label.color           = UIColor.redColor
      label.backgroundColor = UIColor.clearColor      
      label.font            = UIFont.fontWithName( 'AmericanTypewriter', size:30 )
      label.textAlignment   = NSTextAlignmentCenter
      label.frame           = CGRectMake( 0, 0, 300, 50 )
      label.center          = [self.view.frame.size.width / 2, self.view.frame.size.height / 2]
      self.view.addSubview(label)
    end
  end
end