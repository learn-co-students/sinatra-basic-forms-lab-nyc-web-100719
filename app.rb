require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    @puppy = Puppy.new
    erb :create_puppy
  end

  post '/puppy' do
    # binding.pry
    @puppy = Puppy.new(params["name"], params["breed"], params["months_old"].to_i)
    erb :display_puppy
  end

  # get '/diplay_puppy/:id' do
  #   @puppy = Puppy.find(params[:id])
  #   erb :display_puppy
  # end

end
