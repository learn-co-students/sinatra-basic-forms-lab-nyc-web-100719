require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :index
    end 


    #this shows an HTML form for creating a new puppy but does NOT create new until later- specifically until I send the form data to the route there, then it is created within that route! 
    get '/new' do
        erb :create_puppy
    end 

    #then think; okay I am creating a new puppy, doesn't this have to be shown/viewed by the user somehow? So then go into/redirect/render to a view and have some html or something to display this
    post '/puppy' do 
        @new_puppy = Puppy.new(params[:name], params[:breed], params[:months_old])
        erb :display_puppy
    end 


end
