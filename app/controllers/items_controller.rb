class ItemsController < ApplicationController
    before_action :require_logged_in
 
    before_action :set_item, only: [:show, :edit, :update, :destroy]



    def index
        @category = Category.find_by(id: params[:id])
        # @items = Item.find_by(id: @category_id).items
        @items = Item.all 
        
    end
    
    def ticket
        @address = Address.find_by(id: params[:address_id])
    end

    def show
   
    end
    

    def new
        @user = User.find_by(id: session[:user_id])
        @item = Item.new
    end

    def item_data
        @user= User.find_by(id: session[:id])
        @item = Item.find_by(id: params[:id])
        @category = Category.find_by(id: params[:id])
        @address = Address.find_by(id: params[:id])
        @category = Category.new


        respond_to do |format|
          format.html { render :show }
          format.json { render json: @item.to_json(only: [:item_name, :unit_price, :tax, 
                                                          :quantity, :photo, :isbn, :desc, 
                                                          :chosen_quantity, :id])}
        end
    end
    
    def edit
    end

    def create
       
        # --- 1st way-----
        # user = session[:user_id]
        # @item = Item.new(item_params)
        # @item.user = current_user

        # --- 2nd way-----
        @item = current_user.items.build(item_params)
        
        @category = Category.find_by(id: params[:item][:category_id])

        if @item.save
            redirect_to item_path(@item) # new_item_path
        else
            redirect_to new_item_path
        end
    end

    def add_item
        item = Item.find_by(id: params[:item_id])
        current_user
        if session[:cart]
          @cart = session[:cart]
        else
          session[:cart] = []
          @cart = session[:cart]
        end

        @cart.push(item) if Item.exists?(item.id)
        redirect_to items_path
    end

 

   
    def update
        @item = Item.find_by(id: params[:id])
        if @item.update(item_params)
              redirect_to @item
        else
              render 'edit'
        end
    end
    
   


    def remove_item_from(cart)
        @cart.delete_at(item)
      end

    def destroy
        @item = Item.find_by(id: params[:id])
        @item.destroy
        redirect_to stock_report_path
    end

    private
       def set_item
           @item = Item.find_by(id: params[:id])
       end
       
       def item_params
         params.require(:item).permit(:item_name, :unit_price, :tax, 
                                      :quantity, :photo, :isbn, :desc, 
                                      :chosen_quantity, category_ids:[])
       end
end

