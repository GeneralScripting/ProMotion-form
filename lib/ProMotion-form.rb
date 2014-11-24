# encoding: utf-8
unless defined?(Motion::Project::Config)
  raise "ProMotion-form must be required within a RubyMotion project."
end
require 'motion-cocoapods'

Motion::Project::App.setup do |app|
  lib_dir_path = File.dirname(File.expand_path(__FILE__))
  app.files << File.join(lib_dir_path, "ProMotion/form/form_view_controller.rb")
  app.files << File.join(lib_dir_path, "ProMotion/form/form_style.rb")
  app.files << File.join(lib_dir_path, "ProMotion/form/form.rb")
  app.files << File.join(lib_dir_path, "ProMotion/form/form_screen_style.rb")
  app.files << File.join(lib_dir_path, "ProMotion/form/form_screen.rb")

  app.pods do
    pod "FXForms", "~> 1.2"
  end
end
