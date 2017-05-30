class ItemsController < ApplicationController
before_action :authenticate_retailer!, :except => [:show, :index]

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
