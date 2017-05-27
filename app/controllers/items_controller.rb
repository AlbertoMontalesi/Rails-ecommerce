class ItemsController < ApplicationController
  before_action :def_main_category
  before_action :def_sub_category

  def new
    @item = Item.new
  end

  def def_main_category
    @main_categories = Category.where(ancestry: nil)
  end

  def def_sub_category
    @sub_categories = Category.where.not(ancestry: nil)
  end
end