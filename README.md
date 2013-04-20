# MotionAwesome - as if more awesomeness was needed...

![MotionAwesome Screenshots](http://derailed.github.io/motion-awesome/assets/d.png)

FontAwesome (http://fortawesome.github.io/Font-Awesome) is a really cool way to bring in some 
low cost bang! to your web applications. 
Following on that lead, MotionAwesome brings similar awesomeness in the RubyMotion world...
 
 
## For the star-gizzards ;-)

```
> git clone https://github.com/derailed/motion-awesome.git
> cd motion-awesome
> rake
```

## Installation

```
gem install motion-awesome
```

## Dependencies

- motion-map [https://github.com/derailed/motion-map]

## Usage

### Creating awesome labels

```ruby
class WannaBeCoolController < XXXController
  include MotionAwesome
  
  def viewDidLoad
    label( :flag, size: 200 ) do |label|
      self.view.addSubview(label)
    end
  end
end
```

### Creating awesome buttons

```ruby
class WannaBeCoolController < XXXController
  include MotionAwesome
  
  def viewDidLoad
    button( :legal, size: 40, text:%q{Hit me!} ) do |button|
      button.titleLabel.textColor = 0xFB3223.uicolor
      button.titleLabel.font      = UIFont.fontWithName( 'GillSans', size:30 )
      button.addTarget( self,
                        action: "cb:",
                        forControlEvents: UIControlEventTouchUpInside )
      self.view.addSubview( button )
  end
end
```

## Settings


### What's my name?

With MotionAwesome you have access to all the latest icons available on the FontAwesome site.

In order to specify the icon name you can use a symbol for the name minus the 'icon-' prefix and
sub out the '-' with '_'. Simple!

```
FontAwesome     => MotionAwesome
icon-flag       => :flag
icon-star-empty => :star_empty
```

### Options

Awesomization is currently in effect for UILabel and UIButton. 

The method signatures following this strategy:

```ruby
 awesome_label  = label( :icon_name, opts ) do {|comp| ... }
 awesome_button = button( :icon_name, opts ) do {|comp| ... } 
```

Options are as follows:

+ size:  specifies the size of the icon. To size the text portion you can set the font of your liking.
         If no size is specified the icon will be sized according to the active font size.
+ type:  :custom | :rounded. Specifies the type of UIButton to create -- For button only! - 
+ text:  prepends some text to your decorated label or button.
+ color: sets the icon color. If this is not set the icon color will match the text color if specified.


## ATTA BOY!

This gem was inspired by Hiroshi Horiki(@pchw) https://github.com/pchw/fontawesome


## Contact

Fernand Galiana

- http://github.com/derailed
- http://twitter.com/kitesurfer
- <fernand.galiana@gmail.com>

Still work in progress. So please feel to fork or contact me if you run into issues or
just want to send some good vibes...


## License

MotionAwesome is released under the [MIT](http://opensource.org/licenses/MIT) license.


## History
  + 0.0.1:
    + Initial drop
  + 0.0.2:
    + Bug fixes and cleanup
  + 0.0.3:
    + Mo' spring cleaning