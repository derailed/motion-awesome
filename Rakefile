$:.unshift('/Library/RubyMotion/lib')
require 'motion/project/template/ios'
require './lib/motion-awesome'
require 'sugarcube-gestures'

require 'bundler'
Bundler.require
Bundler::GemHelper.install_tasks

Motion::Project::App.setup do |app|
  app.name = 'Awesome!'
  
  app.development do
    app.codesign_certificate  = ENV['dev_bs_certificate']
    app.provisioning_profile  = ENV['dev_bs_profile']
  end  
  
  app.pods do
    pod 'WCAlertView'
  end
end

namespace :gen do
  desc 'Generates plist from css'
  task :plist do
    require File.expand_path('../lib/utils/generator.rb', __FILE__)
    MotionAwesome::Generator.gen_plist( File.join( File.dirname(__FILE__), %w[css font-awesome.css] ) )
  end
end