class C < Common
  def viewDidLoad
    label( :wrench, text:"Yes please!", color: 0xB0FB03.uicolor ) do |label|
      label.color           = 0x539FFB.uicolor
      label.backgroundColor = UIColor.clearColor      
      label.font            = UIFont.fontWithName( 'copperplate', size:40 )
      label.textAlignment   = NSTextAlignmentCenter
      label.frame           = CGRectMake( 0, 0, 300, 50 )
      label.center          = [self.view.frame.size.width / 2, self.view.frame.size.height / 2]
      self.view.addSubview(label)
    end
  end
end