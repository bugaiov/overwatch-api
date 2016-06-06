require_relative 'environment'

class App < Roda
  use Rack::Session::Cookie, secret: SecureRandom.hex
  plugin :json, content_type: 'application/json; charset=utf-8'
  plugin :default_headers,
    'Access-Control-Allow-Origin'  => '*', #TODO: limit to one host
    'Access-Control-Allow-Headers' => 'Authorization,Accepts,Content-Type,X-CSRF-Token,X-Requested-With',
    'Access-Control-Allow-Methods' => 'GET,POST,PUT,DELETE,OPTIONS'

  route do |r|
    r.root do
      'home'
    end

    r.on 'profile/:battletag' do |battletag|
      owp = OverwatchParser.new(battletag)
      r.on 'stats' do
        r.get do
          ParsedPaclulator.stats(owp)
        end
      end
      r.get do
        ParsedPaclulator.everything(owp)
      end
    end
  end
end

run App.freeze.app
