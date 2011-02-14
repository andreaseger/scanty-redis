require 'main'
Sinatra::Application.default_options.merge!(:env => :production)
run Sinatra::Application
