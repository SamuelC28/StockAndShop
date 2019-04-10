class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  # before_action :set_cart
  before_action :logged_in?, only: :home 
  before_action :require_logged_in, except: [:new, :create, :home, :signin]
  
  def home
  end


  private
    def require_logged_in
      redirect_to root_path unless logged_in?
    end

   def logged_in?
    !!current_user
  end

   def require_logged_in
      redirect_to root_path unless logged_in?
    end

    def current_user
        User.find_by(id: session[:user_id]) if session[:user_id]
    end  


  # before_action :current_cart

  private
    # def current_cart
    #   if current_user && current_user.cart
    #     current_user.cart
    #   else
    #     if current_user
    #       current_cart = Cart.create(user_id: current_user.id)
    #       current_cart
    #     end 
      # if session[:cart_id]
      #   cart = Cart.find_by(:id => session[:cart_id])
      #   if cart.present?
      #     @current_cart = cart
      #   else
      #     session[:cart_id] = nil
      #   end
      # end

      # if session[:cart_id] == nil
      #   @current_cart = Cart.create!
      #   session[:cart_id] = @current_cart.id
    #   end
    # end

   
  #   def total
  #     i=1
  #     total=0
  #     @cart.all.each do |item|
  #       i=i+1
  #       total=total + item.quantity * item.unit_price
  #     end
  #     total
  # end
end
