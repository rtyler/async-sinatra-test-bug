
ENV["RACK_ENV"] = 'test'
require 'rspec'
require 'test/unit'
require 'rack/test'
require "sinatra/async/test"

require File.expand_path(File.dirname(__FILE__) + "/../../app/server")

module AppRunner
  def app
    AsyncTest.new
  end
end
World(Test::Unit::Assertions, Sinatra::Async::Test::Methods, AppRunner)

def post_json(path,json)
  header 'Content-Type', 'application/json'
  apost path, json.to_json
  em_async_continue
  last_response
end

