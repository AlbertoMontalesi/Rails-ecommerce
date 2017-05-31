class HomeController < ApplicationController
  helper_method :sort_column, :sort_direction


  def index
    @category = Category.all
    @items = Item.order("#{sort_column} #{sort_direction}")
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

  # def set_item
  #   @items = Item.where(subcategory_id: @subcategory.ids)
  # end
private 
def current_subcategory
  if params[:sub].present?
    @current_subcategory = Subcategory.find(params[:sub])
    @items = @current_subcategory.items
  end
end

def sortable_columns
  ["name", "price"]
end

def sort_column
  sortable_columns.include?(params[:column]) ? params[:column] : "name"
end

def sort_direction
  %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
end

end

