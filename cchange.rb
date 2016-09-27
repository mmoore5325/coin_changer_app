require 'sinatra'
require_relative "changefunction.rb"

get '/' do
	erb :get_name
end

post '/name' do
	name = params[:user_name]
	redirect '/age?user_name=' + name

end

get '/age' do
	name = params[:user_name].capitalize
	erb :get_age, :locals => {:name => name}

end

post '/age' do
	age = params[:age]
	name = params[:user_name]

	redirect '/threenums?user_name=' + name + '&age=' + age
end

get '/threenums' do
	age = params[:age]
	name = params[:user_name]

	erb :threenums, :locals => {:name => name, :age => age}

end


post '/threenums' do
	age = params[:age]
	name = params[:user_name]
	favnum1 = params[:num1]
	favnum2 = params[:num2]
	favnum3 = params[:num3]

	redirect '/change?user_name=' + name + '&age=' + age

end

get '/change' do
	age = params[:age]
	name = params[:user_name]

	erb :change, :locals => {:name => name, :age => age}

end

post '/change' do
	age = params[:age]
	name = params[:user_name]
	change = params[:jingle]

coins = coin_changer(change.to_i)
		erb :change, :locals => {:name => name, :age => age}
		"Hey #{name}, we got your change ready.  We are giving you #{coins[:quarters]} quarters, #{coins[:dime]} dimes, #{coins[:nickels]} nickels, #{coins[:penny]} pennies."
	
end

