
require 'rubygems'
require 'sinatra/async'

class AsyncTest < Sinatra::Base
  register Sinatra::Async

  aget '/' do
    body "hello"
  end
end
