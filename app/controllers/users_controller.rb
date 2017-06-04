class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @order_items = OrderItem.where(user_id: current_user.id)
end
end
