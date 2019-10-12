require 'sinatra'
require 'sinatra/reloader' if production?
require_relative 'caesars_cipher.rb'

get '/' do
  if params[:action] == 'Encode'
    @result = CaesarsCipher.encode(params[:message], params[:key].to_i)
  elsif params[:action] == 'Decode'
    @result = CaesarsCipher.decode(params[:message], params[:key].to_i)
  end

  erb :index
end
