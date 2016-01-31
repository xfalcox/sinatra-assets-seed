require 'bundler'

Bundler.require

require 'sinatra'

class TestApp < Sinatra::Base
  get "/" do
    haml :index
  end

  not_found do
    status 404
    'not_found'
  end
end
