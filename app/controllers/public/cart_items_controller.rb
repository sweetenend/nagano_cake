class Public::CartItemsController < ApplicationController
  def index
    @cart_items=CartItems.all
  end
  
  def update
  end
  
  def destroy
    @cart_item=CartItems.find(params[:id])
    @book.destroy
    redirect_to cart_items_path
  end
  
  def destroy_all
    current_user.CartItem.destroy_all
    redirect_to cart_items_path
  end
  
  def create
    @cart_item_new=CartItems.new(cart_item_params)
    if Item.find_by(name: @cart_item_new.name)
      @cart_item.amount.to_i=@cart_item.amount.to_i+@cart_item_new.amout.to_i
      @cart_item.save
    else
      @cart_item_new.save
  end
  
  private
  
  def cart_item_params
      params.require(:cart_item).permit(:item_id, :amount)
  end
end
