class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    @products = Product.all
  end

  def show
    @order = current_order
    @product = Product.find(params[:id])
    @order_items = current_order.order_items.new
  end

end
