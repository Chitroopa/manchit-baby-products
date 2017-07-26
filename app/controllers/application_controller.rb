class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order


  def current_order
    if Account.find_by(user_id: current_user.id)

      if session[:order_id]
       order = Order.find(session[:order_id])
        if order.status != "In progress"
          # Order.new
        else
          order
        end
      elsif Account.find_by(user_id: current_user.id).orders.where(status: "In progress").any?
        Account.find_by(user_id: current_user.id).orders.where(status: "In progress")[0]
      else
        Order.new
      end
    end
  end


end
