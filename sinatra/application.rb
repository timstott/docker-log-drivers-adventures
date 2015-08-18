require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
require 'logger'


class Application < Sinatra::Base
  set :bind, '0.0.0.0'

  get '/' do
    logger = Logger.new(STDOUT.tap { |d| d.sync = true })
    logger.info 'LOL'
    'Hello World'
  end
end
