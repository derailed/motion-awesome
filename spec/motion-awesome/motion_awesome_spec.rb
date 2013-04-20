describe MotionAwesome do
  
  describe "#label" do    
    it "builds a simple label correctly" do
      comp = MotionAwesome.label( :flag ) do |label|
        label.class.should == UILabel
      end
      comp.text.should == "\xEF\x80\xA4"
    end

    it "builds a text label correctly" do
      comp = MotionAwesome.label( :flag, text:%q(Bozo!) ) do |label|
        label.class.should == UILabel
      end
      comp.text.should == "\xEF\x80\xA4 Bozo!"
    end

    it "builds a text label with all the fixins correctly" do
      comp = MotionAwesome.label( :flag, text:%q(Bozo!), color: UIColor.redColor ) do |label|
        label.color = UIColor.greenColor
        label.font  = UIFont.fontWithName( 'copperplate', size:40 )        
        label.class.should == UILabel
      end
      comp.text.should == "\xEF\x80\xA4 Bozo!"
      attrs = comp.attributedText
      attrs.string.should == "\xEF\x80\xA4 Bozo!"
      
      attrs.enumerateAttributesInRange( (0...1), 
        options:NSAttributedStringEnumerationReverse, 
        usingBlock:->(attrs, range, stop) {  
          attrs['NSColor'].should           == UIColor.redColor
          attrs['NSFont'].familyName.should == 'FontAwesome'
        }
      )
      attrs.enumerateAttributesInRange( (2..attrs.string.size-1), 
        options:NSAttributedStringEnumerationReverse, 
        usingBlock:->(attrs, range, stop) {
          attrs['NSColor'].should           == UIColor.greenColor
          attrs['NSFont'].familyName.should == 'Copperplate'
          attrs['NSFont'].pointSize.should  == 40
        }
      )      
    end
    
    it 'raises an error if no icon is found' do
      lambda { 
        MotionAwesome.label( :bozo )
      }.should.raise(MotionAwesome::InvalidAwesomeIconError)
    end    
  end
  
  describe '#button' do
    it 'build a round button correctly' do
      comp = MotionAwesome.button( :flag, text:%q(Hello World!) ) do |button|
        button.class.should == UIRoundedRectButton
      end
      comp.attributedTitleForState(UIControlStateNormal).string.should == "\xEF\x80\xA4 Hello World!"
    end
    
    it 'build a cust button correctly' do
      comp = MotionAwesome.button( :flag, type: :custom, text:%q(Bumblebee Tuna) ) do |button|
        button.class.should == UIButton
      end
      comp.attributedTitleForState(UIControlStateNormal).string.should == "\xEF\x80\xA4 Bumblebee Tuna"
    end
    
    it "builds a button with all the fixins correctly" do
      comp = MotionAwesome.button( :flag, text:%q(Bozo!), color: UIColor.redColor ) do |button|
        button.titleLabel.textColor = UIColor.greenColor
        button.titleLabel.font      = UIFont.fontWithName( "Vermin Vibes Out Of Ink", size:55 )
      end
      
      attrs = comp.attributedTitleForState(UIControlStateNormal)
      attrs.string.should == "\xEF\x80\xA4 Bozo!"
      
      attrs.enumerateAttributesInRange( (0...1),
        options:NSAttributedStringEnumerationReverse, 
        usingBlock:->(attrs, range, stop) {  
          attrs['NSColor'].should           == UIColor.redColor
          attrs['NSFont'].familyName.should == 'FontAwesome'
        }
      )
      # attrs.enumerateAttributesInRange( (2..attrs.string.size-1), 
      #   options:NSAttributedStringEnumerationReverse, 
      #   usingBlock:->(attrs, range, stop) {
      #     # attrs['NSColor'].should           == UIColor.greenColor
      #     # attrs['NSFont'].familyName.should == 'Copperplate'
      #     # attrs['NSFont'].pointSize.should  == 40
      #   }
      # )      
    end    
  end
end