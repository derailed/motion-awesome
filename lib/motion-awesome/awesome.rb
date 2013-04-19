module MotionAwesome
  module_function 
      
  def button( icon, options={}, &block )
    opts = parse_options( icon, options )
    comp = UIButton.buttonWithType( map_types( opts.type? ? opts.type : nil ) )    
    comp.setAttributedTitle( attributed_text(opts), forState: UIControlStateNormal )
    yield comp if block_given?
    comp
  end
  
  def label( icon, options={}, &block )
    opts = parse_options( icon, options )
    comp = UILabel.alloc.initWithFrame( [[0,0],[opts[:size],opts[:size]]] )
    comp.setAttributedText( attributed_text(opts) )
    comp.awesome_color = opts.color if opts.color?
    yield comp if block_given?
    comp    
  end
        
  def font( size )
    UIFont.fontWithName( 'FontAwesome', size:size )
  end
        
  private

  def button_types
    @button_types ||=
      Map( custom:      UIButtonTypeCustom,
           rounded:     UIButtonTypeRoundedRect,
           disclosure:  UIButtonTypeDetailDisclosure,
           info_light:  UIButtonTypeInfoLight,
           info_dark:   UIButtonTypeInfoDark,
           contact_add: UIButtonTypeContactAdd )
  end
     
  def map_types( type )
    button_types.get(type) {UIButtonTypeRoundedRect}
  end

  def xform_icon( icon )
    icon.to_s.gsub( /_/, '-')
  end
  
  def parse_options( icon, opts )    
    options        = Map( opts.merge( icon: xform_icon(icon) ) )
    options[:size] = UIFont.systemFontSize unless options[:size]
    options
  end
  
  def attributed_text( opts )
    awesome_attrs = Map(NSFontAttributeName, font(opts[:size]) )
    awesome_attrs[NSForegroundColorAttributeName] = opts.color if opts.color?
    text          = hex_for_icon( opts.icon ) 
    text         += " " + opts.text if opts.text?
    range         = opts.text? ? (0..1) : (0..0)
    NSMutableAttributedString.alloc.initWithString( text, attributes: nil ).tap do |attrs|
      attrs.setAttributes( awesome_attrs, range:range )
    end
  end
    
  def hex_for_icon( icon )
    index = plist["icon-#{icon}"]
    raise "Unable to find icon representation for `#{icon.inspect}" unless index
    index.hex.chr(Encoding::UTF_8)
  end
    
  def plist
    @plist ||= begin
      NSMutableDictionary.dictionaryWithContentsOfFile(
        NSBundle.mainBundle.resourcePath.stringByAppendingPathComponent( "fontawesome.plist" )
      )
    end
  end
end