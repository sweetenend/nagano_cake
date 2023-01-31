class Public::CustomersController < ApplicationController
  def show
    @customer=Customer.find(params[:id])
  end

  def edit
    @customer=Customer.find(params[:id])
  end

  def confirm
  end
  
  def withdrawal
     @customer=Customer.find(params[:id])
     @customer.is_deleted = true
  end
end
