class C < Z
  def viewDidLoad
    @comp=label(:rocket, text:"Rocket Hot!", color:0xB0FB03.uicolor) do |label|
      label.color           = 0x539FFB.uicolor
      label.backgroundColor = UIColor.clearColor
      label.font            = UIFont.fontWithName( 'copperplate', size:40 )
      label.textAlignment   = NSTextAlignmentCenter
      label.frame           = CGRectMake( 0, 0, 300, 50 )
      label.center          = center
      self.view.addSubview(label)
    end
    super
  end
end
