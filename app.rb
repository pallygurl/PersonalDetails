require 'sinatra'

get '/' do 
	erb :getname
end

post '/getname' do
	yourname = params[:user_name]
	redirect '/age?users_name=' + yourname
end	

get '/age' do
	yourname = params[:users_name]
	erb :getage, :locals => {:yourname => yourname}
end

post '/getage' do
	age = params[:user_age]
	yourname = params[:user_name]
	redirect '/numbers?user_name=' + yourname + "&user_age=" + age
end

get '/numbers' do
	age = params[:user_age]
	yourname = params[:user_name]
	erb :getnumbers, :locals => {:yourname => yourname, :age => age}
end

post '/getnumbers' do
	age = params[:user_age]
	yourname = params[:user_name]
	num1 = params[:fav_1]
	num2 = params[:fav_2]
	num3 = params[:fav_3]
	sum = num1 + num2 + num3

		
"So your name is #{yourname}, your age is #{age}, and your 3 favorite numbers are #{num1}, #{num2}, and #{num3}."
end