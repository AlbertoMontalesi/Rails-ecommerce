class ItemsController < ApplicationController
before_action :authenticate_retailer!, :except => [:show, :index]

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id]
    set_retailer
  end

  def set_subcategory
    @subcategory = Subcategory.where(category_id: @category.id)
  end

  def set_retailer
    @retailer = Retailer.find_by_id(@item.retailer_id)
  end

  
 
end
