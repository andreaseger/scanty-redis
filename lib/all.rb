require 'post'
require 'redis'

redis_config = if ENV['SCANTY_REDIS_URL']
	require 'uri'
	uri = URI.parse ENV['SCANTY_REDIS_URL']
	{ :host => uri.host, :port => uri.port, :password => uri.password, :db => uri.path.gsub(/^\//, '') }
else
	{}
end

DB = Redis.new(redis_config)
