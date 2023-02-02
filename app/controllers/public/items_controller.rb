class Public::ItemsController < ApplicationController
  def index
    @items=@Items.all
  end

  def show
    @item=Items.find(item_params[:id])
    @cart_item=CartItems.new
  end
  
  private
  
  def item_params
    params.require(:item).permit(:genre_id, :name, :introduction, :price, :is_active, :image)
  end
end
