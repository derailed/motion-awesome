require 'css_parser'
include CssParser
require 'plist'

module MotionAwesome
  class Generator
    def self.plist
      File.join( File.dirname( __FILE__),
                 %w(.. .. resources fontawesome.plist) )
    end

    def self.gen_plist( css )
      parser = CssParser::Parser.new
      parser.load_file!( css )
      fonts = {}
      parser.each_selector do |selector, declarations, _|
        next if selector !~ /\A.fa\-/
        name = selector[/\.(.*)\:before/,1]
        next unless name and name != 'icon-large'
        fonts[name] = "0x#{declarations[/(f.*)"/, 1]}"
      end
      write( fonts )
    end

    def self.write( fonts )
      File.open( plist, 'w' ) { |f| f << fonts.to_plist }
    end
  end
end
