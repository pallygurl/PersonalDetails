require 'sinatra'

get '/' do 
	erb :getname
end

post '/getname' do
	name = params[:user_name]
	redirect '/age?users_name=' + name
end	

get '/age' do
	name = params[:users_name]
	erb :getage, :locals => {:name => name}
end

post '/getage' do
	age = params[:user_age]
	name = params[:user_name]
	"Wow #{name}! You're #{age}. You don't look a day over 14!"
end
