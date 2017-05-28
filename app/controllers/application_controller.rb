class ApplicationController < ActionController::Base
protect_from_forgery with: :exception

 before_action :set_categories
 before_action :set_subcategories

  def set_categories
    @categories = Category.all
  end

  def set_subcategories
    @subcategories = Subcategory.all
  end
end
