class LineItemsController < ApplicationController
  # include CurrentCart
  # before_action :item_params
  before_action :set_line_item_params, only: [:show, :edit, :update, :destroy]
  # before_action :set_cart, only: [:create]
  

  # def index
  #   @line_items = LineItem.all
  # end

 
  # def show
  # end

 
  # def new
  #   @line_item = LineItem.new
  # end

  # def edit
  # end

  
  # def create
  #   @item = session[:user_id]
  #   # @item = Item.find(params[:item_id])

  #   puts '00000000000000000'
  #   puts @item.inspect
  #   @line_item = @cart.add_item(@item)

  #     if @line_item.save
  #      redirect_to @line_item.cart
  #     else
  #      render :new 
  #     end
   
  # end


  # def update
  
  #     if @line_item.update(line_item_params)
  #       redirect_to @line_item
        
  #     else
  #        render :edit 
       
  #     end
   
  # end

 
  # def destroy
  #   @cart = Cart.find(session[:cart_id])
  #   @line_item.destroy
  
  #   redirect_to cart_path(@cart)

  # end

  # private
  
  #   def set_line_item
  #     @line_item = LineItem.find(params[:id])
  #   end

  #   def line_item_params
  #     params.require(:line_item).permit(:item_id)
  #   end






#   def add_quantity
#     @line_item = LineItem.find(params[:id])
#     @line_item.quantity += 1
#     @line_item.save
#     redirect_to cart_path(@current_cart)
#   end
  
#   def reduce_quantity
#     @line_item = LineItem.find(params[:id])
#     if @line_item.quantity > 1
#       @line_item.quantity -= 1
#     end
#     @line_item.save
#     redirect_to cart_path(@current_cart)
#   end

#   def create
#     # Find associated item and current cart
#     selected_item = Item.find(params[:item_id])
#     current_cart = @current_cart
  
#     # If cart already has this item then find the relevant line_item and iterate quantity otherwise create a new line_item for this item
#     if current_cart.items.include?(selected_item)
#       # Find the line_item with the selected_item
#       @line_item = current_cart.line_items.find_by(:item_id => selected_item)
#       # Iterate the line_item's quantity by one
#       @line_item.quantity += 1
#     else
#       @line_item = LineItem.new
#       @line_item.cart = current_cart
#       @line_item.item = selected_item
#     end
  
#     # Save and redirect to cart show path
#     @line_item.save
#     redirect_to cart_path(current_cart)
#   end

#   def destroy
#     @line_item = LineItem.find(params[:id])
#     @line_item.destroy
#     redirect_to cart_path(@current_cart)
#   end  
  
#   private
#     def set_line_item_params
#       params.require(:line_item).permit(:quantity, :item_id, :cart_id)
#     end
# end
