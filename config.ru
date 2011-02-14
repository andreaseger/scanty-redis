require 'main'
Sinatra::Base.set(:env, :production)
run Sinatra::Application
