require 'sinatra/base'
require 'rack-flash'

class BattleShips < Sinatra::Base
	use Rack::Flash
	enable :sessions

  get '/' do
    erb :index
  end

  get '/register' do
  	erb :register
  end

  post '/register' do
  	redirect '/register' if params[:name].nil?    
  	flash[:notice] = "you must enter a name"
  	erb :register
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
