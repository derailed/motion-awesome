# -*- encoding: utf-8 -*-
require File.expand_path('../lib/motion-awesome/version.rb', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'motion-awesome'
  gem.version       = MotionAwesome::VERSION
  gem.authors       = ['Fernand Galiana']
  gem.email         = ['fernand.galiana@gmail.com']
  gem.summary       = %{Port of the most excellent FontAwesome lib to IOS}
  gem.description   = %{Blah Blah attributions}  
  gem.homepage      = 'https://github.com/derailed/motion-awesome'
  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^spec/})
  gem.require_paths = ['lib']
  
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'plist'
  gem.add_development_dependency 'css_parser'  
  
  gem.add_dependency 'motion-map'
end