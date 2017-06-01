class HomeController < ApplicationController
  def index
    @category = Category.all
    @search = Item.ransack(params[:q])
    @items = @search.result
  end

  def clothes
    @category = Category.find_by_id(1)
    set_subcategory
    current_subcategory
    search_item
  end

  def shoes
    @category = Category.find_by_id(2)
    set_subcategory
    current_subcategory
    search_item
 end

  def accessories
    @category = Category.find_by_id(3)
    set_subcategory
    current_subcategory
    search_item
end

  private

  def set_subcategory
    @subcategory = Subcategory.where(category_id: @category.id)
 end

  def search_item
    @search = @items.ransack(params[:q])
    @items = @search.result
  end

  def current_subcategory
    if params[:sub].present?
      @current_subcategory = Subcategory.find(params[:sub])
      @items = @current_subcategory.items
    else
      @items = @category.items
    end
  end
end
