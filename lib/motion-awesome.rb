unless defined?(Motion::Project::Config)
  raise "motion-awesome must be required within a RubyMotion project Rakefile."
end

LIB_DIR = File.dirname(__FILE__)
Motion::Project::App.setup do |app|
  Dir.glob(File.join( LIB_DIR, %w(motion-awesome ** *.rb))).each do |file|
    app.files.unshift(file)
  end
  app.resources_dirs << File.join(LIB_DIR, 'assets')
  app.fonts << "fontawesome-webfont.ttf"
end
