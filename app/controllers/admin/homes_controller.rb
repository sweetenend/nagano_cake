class Admin::HomesController < ApplicationController
  def top
    @order_details=Order_Details.all
  end
end
