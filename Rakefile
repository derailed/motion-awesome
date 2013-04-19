$:.unshift('/Library/RubyMotion/lib')
require 'motion/project'
require './lib/motion-awesome'
require 'sugarcube-gestures'

require 'bundler'
Bundler.require
Bundler::GemHelper.install_tasks

Motion::Project::App.setup do |app|
  app.name = 'Awesome!'
  
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