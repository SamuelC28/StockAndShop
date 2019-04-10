class OrdersController < ApplicationController
    
  # # GET /orders
  # def index
  #   @orders = Order.all
  # end

  # # GET /orders/1
  
  # def show
  #   @order = Order.find(params[:id])
  # end

  # # GET /orders/new
  # def new
  #   @order = Order.new
  # end

  # # GET /orders/1/edit
  # def edit
  # end

  # # POST /orders
  # def create
  #   @order = Order.new(order_params)
  #     if @order.save
  #        redirect_to @order
  #       #  notice: 'Order was successfully created.'
  #     else
  #       render :new 
  #     end
  #   end
  # end

  # # PATCH/PUT /orders/1

  # def update

  #   if @order.update(order_params)
  #     redirect_to @order
  #     #  notice: 'Order was successfully updated.' 
  #   else
  #     format.html { render :edit }
  #   end
  
  # end

  # # DELETE /orders/1
  # def destroy
  #   @order.destroy
  #   redirect_to orders_path
  #   #'Order was successfully destroyed.'
  # end

  # private
   
  #   def order_params
  #     params.require(:order).permit(:user_id)
  #   end




#   def index
#     @orders = Order.all
#   end

#   def show
#     @order = Order.find(params[:id])
#   end

#   def new
#       @order = Order.new
#   end

#   def create
#     @order = Order.new(order_params)
#     @current_cart.line_items.each do |item|
#       @order.line_items << item
#       item.cart_id = nil
#     end
    
#     @order.save
#     Cart.destroy(session[:cart_id])
#     session[:cart_id] = nil
#     redirect_to root_path
#   end
  
#   private
#     def order_params
#       params.require(:order).permit(:name, :email, :address, :paymment_method)
#     end
# end
