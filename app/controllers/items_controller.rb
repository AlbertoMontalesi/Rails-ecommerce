class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def show
    @items = Item.all
  end

  def set_subcategory
    @subcategory = Subcategory.where(category_id: @category.id)
  end
 
end
