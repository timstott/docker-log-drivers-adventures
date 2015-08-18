require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
require 'logger'
require 'json'

STDOUT.sync = true

class Application < Sinatra::Base
  set :bind, '0.0.0.0'

  get '/' do
    STDOUT.puts JSON.dump("_service.name"=>"sinatra",
                           "short_message"=>"Hello World in GELF",
                           "timestamp"=>1439388274.077,
                           "host"=>"TSTOTT.local",
                           "level"=>7,
                           "version"=>"1.1")

    STDOUT.puts 'This is a long line' * 30_000

    'Hello World'
  end
end

