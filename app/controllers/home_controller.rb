class HomeController < ApplicationController
  def index
    @category = Category.all
  end

  def clothes
    @category = Category.find_by_id(1)
    set_subcategory
    current_subcategory
  end

  def shoes
    @category = Category.find_by_id(2)
    set_subcategory
    current_subcategory
 end

  def accessories
    @category = Category.find_by_id(3)
    set_subcategory
    current_subcategory
end

  def set_subcategory
    @subcategory = Subcategory.where(category_id: @category.id)
 end

  def set_item
    @items = Item.where(subcategory_id: @subcategory.ids)
  end

def current_subcategory
  if params[:sub].present?
    @current_subcategory = Subcategory.find(params[:sub])
    @items = @current_subcategory.items
  end
end

end

