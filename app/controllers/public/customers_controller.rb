class Public::CustomersController < ApplicationController
  def show
    @customer=current_customer
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
