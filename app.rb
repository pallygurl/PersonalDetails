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
	redirect '/numbers?user_name=' + name + "&user_age=" + age
end

get '/numbers' do
	age = params[:user_age]
	name = params[:user_name]
	erb :getnumbers, :locals => {:name => name, :age => age}
end

post '/getnumbers' do
	age = params[:user_age]
	name = params[:user_name]
	number1 = params[:fav_1]
	number2 = params[:fav_2]
	number3 = params[:fav_3]
end
	
