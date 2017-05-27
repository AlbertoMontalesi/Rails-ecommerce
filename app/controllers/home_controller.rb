class HomeController < ApplicationController
before_action :def_main_category
before_action :def_sub_category

  def index
  end

  def clothes
    @main_category = @main_categories[0]
    @sub_categories = Category.where(id: [@main_category.child_ids])
  end

  def shoes
     @main_category = @main_categories[1]
     @sub_categories = Category.where(id: [@main_category.child_ids])
  end

  def accessories
     @main_category = @main_categories[2]
     @sub_categories = Category.where(id: [@main_category.child_ids])
  end



  def def_main_category
    @main_categories = Category.where(ancestry: nil)
  end

  def def_sub_category
    @sub_categories = Category.where.not(ancestry: nil)
  end
end
