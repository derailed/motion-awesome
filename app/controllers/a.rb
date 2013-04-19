class A < Z  
  def viewDidLoad    
    @comp = label( :flag, size: 200 ) do |label|
      label.color           = 0x04B0FB.uicolor
      label.backgroundColor = UIColor.clearColor
      label.frame           = CGRectMake( 0, 0, 200, 200 )
      label.center          = center
      self.view.addSubview(label)
    end 
    super   
  end  
end