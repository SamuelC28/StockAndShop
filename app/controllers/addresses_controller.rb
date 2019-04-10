class AddressesController < ApplicationController
  before_action :logged_in?, only: [:index, :new, :create]
  before_action :set_address, only: [:show, :edit, :update, :destroy]

  def index
    @addresses = Address.where(user_id: current_user.id)
  end

  def show
  end

  def new
    @address = Address.new
  end

  def edit
  end

  def create
    @address = Address.new(address_params)
    @address.user_id = current_user.id

    if @address.save
       redirect_to ticket_path(@address)
      # render :new 
    end
    
  end

  def update
    if @address.update(address_params)
     redirect_to addresses_path 
     
    else
       render :edit 
    end
 
  end
  
  
  def destroy
    @address.destroy
    redirect_to addresses_url
  end
 
   
    
  private
    def address_params
      params.require(:address).permit(:receiver, :company, :street,
                                      :street_extra, :city, :postal_code,
                                      :state, :country, :phone)
    end

    def set_address
      @address = Address.find_by(id: params[:id])
      # @address.user_id
   end
end
