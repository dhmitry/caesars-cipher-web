require 'sinatra'
require 'sinatra/reloader' if production?

get '/' do
  erb :index
end
