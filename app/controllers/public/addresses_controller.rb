class Public::AddressesController < ApplicationController
  def index
    @address=Addresses.new
    @addresses=Addresses.all
  end

  def edit
    @address=Addresses.find(address_params[:id])
  end
  
  def create
    @address=Addresses.new(address_params)
    @address.save
  end
  
  private
  
  def address_params
    params.require(:address).permit(:customer_id, :name, :postal_code, :address)
  end
end
