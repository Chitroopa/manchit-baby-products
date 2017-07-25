class CartsController < ApplicationController

  def show
    # @account = Account.find_by(user_id: current_user.id)
    # @order_items = @account.orders.where(status: "In progress")
    @order_items = current_order.order_items
  end
end
