class OrderItemsController < ApplicationController
  before_action :authenticate_user!
 
 def create
    @order = current_order
    @order_item = @order.order_items.new(order_items_params)
    @order_item.user_id = current_user.id
    existing_order = @order.order_items.where(item_id: params[:order_item][:item_id])
    if existing_order.count >= 1
      existing_order.last.update_column(:quantity, 
        existing_order.last.quantity + params[:order_item][:quantity].to_i)
    else
      @order.save
    end
    if @order.save
      redirect_to carts_show_path(@order)
    end
    session[:order_id] = @order.id
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_items_params)
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end

  private

  def order_items_params
    params.require(:order_item).permit(:quantity, :item_id, :user_id)
  end
end
