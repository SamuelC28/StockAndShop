class SessionsController < ApplicationController
  #  before_action :set_user, only: [:show, :edit, :update, :destroy]
   def new
      @user = User.new
      @users = User.all
    end
  

    def signin
       redirect_to user_path session[:user_id] if logged_in?
    end

    def destroy
      session.delete :user_id # or session[:user_id] = nil
      # session[:cart].clear
      redirect_to root_url
    end
  
    def create
       if request.env["omniauth.auth"]
          @user = User.find_or_create_by(uid: auth['uid']) do |u|
            u.fullname = auth['info']['name']
            u.email = auth['info']['email']
         end

         @user.password = SecureRandom.hex(9)
         @user.save

         session[:user_id] = @user.id
         redirect_to categories_path
       else
          @user = User.find_by(fullname: params[:user][:fullname])

          if @user && @user.authenticate(params[:user][:password])
             session[:user_id] = @user.id
             redirect_to categories_path
          else
            redirect_to signin_path #or redirect_to signin_session_path
          end
          
       end
     
    end
   

    private
    def auth
      request.env['omniauth.auth']
    end
end