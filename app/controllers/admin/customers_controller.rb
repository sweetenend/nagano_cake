class Admin::CustomersController < ApplicationController
  def index
    @customers=Customers.all
  end

  def show
    @customer=Customers.find(params[:id])
  end

  def edit
    @customer=Customer.find(params[:id])
  end
  
  def update
    @customer=Customer.find(params[:id])
    @customer.update(customer_params)
  end
  
  private
  
  def cutomers_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :telephone_number, :is_deleted)
    
end
