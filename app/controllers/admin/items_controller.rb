class Admin::ItemsController < ApplicationController
  def index
    @items=Items.all
  end

  def new
    @item=Items.new
  end
  
  def create
    @item=Items.new(item_params)
    @item.save
  end

  def show
    @item=Items.find(params[:id])
  end

  def edit
    @item=Items.find(params[:id])
  end
  
  def update
    @item=Items.find(params[:id])
    @item.update(item_params)
  end
  
  private 
  
  def item_params
    params.require(:item).permit(:name, :introduction, :price, :is_active, :image)
  end
end
