class Public::CartItemsController < ApplicationController

  def index
    @cart_item=Cart_item.cart_item_params[:item_id]
  end

  def update
  end

  def destroy
  end

  def destroy_all
  end

  def create
  end

end
