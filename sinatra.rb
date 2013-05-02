#coding: utf-8
require 'sinatra'
require 'haml'

get '/' do
  redirect '/Sinatra/'
end

get '/:name/' do
  @display_name = params[:name]
  haml :index  
end

post '/hello' do
  @name = params[:name]
  if @name.nil? then
    @name = "Sinatra"
  end
  redirect '/' + @name + '/'
end

