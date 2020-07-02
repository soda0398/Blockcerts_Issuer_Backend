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
  logfile = File.open("./logfile.txt","w");
  logfile.write(request.body.read)
  logfile.close
  redirect '/log'
end


get '/log' do
  logfile = File.open("./logfile.txt","r")
  contents = logfile.read
  contents
end

post '/log' do
  logfile = File.open("./logfile.txt","w");
  logfile.write(request.body.read)
  logfile.close
  redirect '/log'
end