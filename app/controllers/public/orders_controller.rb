class Public::OrdersController < ApplicationController
  def new
    @order=Order.new
  end
  
  def index
    @orders=Order.all
  end
  
  def create
  end
  
  def show
  end
  
  def confirm
  end
  
  def done
  end
  
  
end
