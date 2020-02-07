require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
<<<<<<< HEAD
    @user = User.find_by(username: params[:username])
    if @user 
      session[:user_id] = @user.id 
      redirect "/account"
    else 
      erb :error
=======
    @user = User.find_by(username: params[:username], password: params[:password])
    if @user.class == User
      session[:user_id] = @user.id
    redirect "/account"
    else
      redirect "/error"
>>>>>>> d9b05580f85c86a8a4bdca5c4a99d1ee10d77c76
    end
  end
  
  get '/account' do
<<<<<<< HEAD
    @logged_user = User.find_by_id(session[:user_id])
    if @logged_user
      erb :account
    else
       erb :error
    end
=======
    
>>>>>>> d9b05580f85c86a8a4bdca5c4a99d1ee10d77c76
  end

  get '/logout' do
    session.clear
    redirect "/"
  end


end

