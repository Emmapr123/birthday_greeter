require 'sinatra'
require './birthday_calculator'

get '/' do
  erb :index
end 

post '/birthday' do
  $Birthday = Birthday.new(params[:name])
  $Birthday.when_is_my_birthday(params[:month], params[:day])
  erb :birthday
end 


