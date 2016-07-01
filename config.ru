require_relative 'environment'

class App < Roda
  use Rack::Session::Cookie, secret: SecureRandom.hex
  plugin :json, content_type: 'application/json; charset=utf-8'
  plugin :default_headers,
    'Access-Control-Allow-Origin'  => 'https://overwatchprofile.com',
    'Access-Control-Allow-Headers' => 'Authorization,Accepts,Content-Type,X-CSRF-Token,X-Requested-With',
    'Access-Control-Allow-Methods' => 'GET,POST,PUT,DELETE,OPTIONS' unless ENV['RACK_ENV'] = 'production'

  route do |r|
    r.root do
      'Welcome to api.overwatchprofile.com!'
    end

    r.on 'profile/:platform/:region/:battletag' do |platform, region, battletag|
      owp = OverwatchParser.new(platform, region, battletag)
      r.get do
        ParsedPaclulator.everything(owp)
      end
    end
  end
end

run App.freeze.app
