require 'sinatra'
require "sinatra/reloader" if development?
require 'json'

get '/' do
  'Wee World!'
end

get '/api/issuer_info' do
  logfile = File.open("./logfile.txt","w");
  logfile.write(request.body,request.request_method)
  logfile.close

  content_type :json
  #{hello: "helloworld"}.to_json
  File.read("./public/issuer.json");
end

post '/api/issuer_info' do
  logfile = File.open("./logfile.txt","w");
  logfile.write(request.body.read)
  logfile.close
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