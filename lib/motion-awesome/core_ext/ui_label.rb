class UILabel
  attr_accessor :awesome_color
  
  def awesome?; self.text =~ /\A\W/ end
        
  def font=( font )      
    super
    return unless awesome?

    attr_text = self.attributedText
    attr_text.addAttribute( NSFontAttributeName, 
                            value:font, 
                            range:(2..attr_text.length-1) ) if attr_text.length > 1
    attr_text.addAttribute( NSFontAttributeName, 
                            value:MotionAwesome.font(font.pointSize), 
                            range:(0...1) )
    attr_text.addAttribute( NSForegroundColorAttributeName, 
                            value:awesome_color, 
                            range:(0...1) ) if awesome_color                        
  end
end