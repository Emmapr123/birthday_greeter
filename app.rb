require 'sinatra/base'
require './birthday_calculator'

class Birthday < Sinatra::Base
  enable :sessions
  set :sessions, true
  set :session_secret, 'snake'

  get '/' do
    erb :index
  end 

  post '/birthday' do
    $Birthday = Birthday_calculator.new(params[:name])
    $Birthday.when_is_my_birthday(params[:month], params[:day])
    erb :birthday
  end 

end


