require_relative 'config/environment'
require_relative 'models/puppy.rb'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/create_puppy.erb' do
    erb :create_puppy
  end

  post "/display_puppy" do
    @name = params[:name]
    @age = params[:age]
    @breed = params[:breed]
    # binding.pry

    erb :display_puppy
  end

  get '/new' do
    erb :create_puppy
  end

end
