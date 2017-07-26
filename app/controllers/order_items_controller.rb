class OrderItemsController < ApplicationController

  def index

  end

  def create
    @order = current_order
    @item = @order.order_items.new(item_params)
    @order.account_id = (Account.find_by(user_id: current_user.id)).id
    @order.save
    session[:order_id] = @order.id
    redirect_to cart_path
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    redirect_to cart_path
  end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end


end
