require 'css_parser'
include CssParser
require 'plist'

module MotionAwesome
  class Generator  
    def self.plist; File.join( File.dirname( __FILE__), %w(.. .. resources fontawesome.plist) ) end
    
    def self.gen_plist( css )
      parser = CssParser::Parser.new
      parser.load_file!( css )
      fonts = {}
      parser.each_selector do |selector, declarations, specificity|
        next if selector !~ /\A.icon/
        name = selector[/\.(.*)\:before/,1]
        next unless name and name != 'icon-large'
        hex_val = "0x#{declarations[/(f.*)"/, 1]}"
        puts "#{name} : #{hex_val.inspect}"
        fonts[name] = hex_val
      end
      write( fonts )
    end
            
    def self.write( fonts )
      File.open( plist, 'w' ) do |f|
        f << fonts.to_plist
      end
    end
  end
end