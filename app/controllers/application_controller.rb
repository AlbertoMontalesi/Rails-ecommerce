class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_categories
  before_action :set_subcategories

  helper_method :current_order

  include DeviseWhitelist

  def set_categories
    @categories = Category.all
  end

  def set_subcategories
    @subcategories = Subcategory.all
  end

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end
end
