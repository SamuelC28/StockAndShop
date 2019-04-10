# class CartsController < ApplicationController
#   rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart
#   # before_action :set_cart, only: [:show, :edit, :update, :destroy]
  
#   # def index
#   #   @carts = Cart.all
#   # end


#   # def show
#   # end

#   # def new
#   #   @cart = Cart.new
#   # end

#   # def edit
#   # end


#   # def create
#   #   @cart = Cart.new(cart_params)

#   #     if @cart.save
#   #       redirect_to @cart, notice: 'Cart was successfully created.' 
#   #     else
#   #      render :new 
#   #     end
#   # end


#   # def update
#   #     if @cart.update(cart_params)
#   #       redirect_to @cart, notice: 'Cart was successfully updated.' 
#   #     else
#   #       render :edit 
#   #     end
#   # end


#   # def destroy
#   #   @cart.destroy if @cart.id == session[:cart_id]
#   #   session[:cart_id] = nil
#   #   redirect_to carts_url, notice: 'Cart was successfully destroyed.' 
#   #   end
#   # end

#   # private
   
#   #   def set_cart
#   #     @cart = Cart.find(params[:id])
#   #   end

#   #   def cart_params
#   #     params.fetch(:cart, {})
#   #   end

#   #   def invalid_cart
#   #     logger.error "Attem to access invalid cart #{params[:id]}"
#   #     redirect_to root_path, notice: "That cart does not exists."
#   #   end
#   def add_item
#    item = Item.find_by(id: params[:id])

#    if !@cart.include?(item.id)
#     @cart.push(item.id)    
#    end
#    redirect_to cart_path
#   end

#   # def show
#   #   @item = Item.find_by(id: params[:item_id])

#   #   puts "000000000000000000"
#   #   puts "HERE'S THE ITEM: #{@item.inspect}"
#   #  puts current_cart
#   #   @cart = current_cart
#   #   if @item.quantity > 0
#   #     current_cart.add_item(@item)
#   #   end
  

#   # end
#   # def add_to_cart
#   #   current_cart.add_item(params[:item_id])
#   #   redirect_to carts_path(current_cart.id)
# # end

#   def destroy
#     @cart = @current_cart
#     @cart.destroy
#     session[:cart_id] = nil
#     redirect_to root_path
#   end
# end
