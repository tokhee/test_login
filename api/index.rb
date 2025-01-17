require 'webrick'
require_relative '../config/environment'

Handler = Rack::Handler::WEBrick
Handler.run Rails.application, Port: ENV.fetch('PORT', 3000) 