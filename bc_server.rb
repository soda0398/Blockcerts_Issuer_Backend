require 'sinatra'
require "sinatra/reloader" if development?
require 'json'

get '/' do
  'Wee World!'
end

get '/api/issuer_info' do
  content_type :json
  #{hello: "helloworld"}.to_json
  File.read("./public/issuer.json");
end

post '/api/issuer_info', provides: :json do
  params = JSON.parse request.body.read

end
