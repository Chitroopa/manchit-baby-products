class AccountsController < ApplicationController
  def show
    @account = Account.find_by(user_id: current_user.id)
    @account_history = @account.orders.where(status: "Paid")
  end
end
