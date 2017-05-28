class HomeController < ApplicationController
  def index
    @category = Category.all
  end

  def clothes
    @category = Category.find_by_id(1)
  end

  def shoes
    @category = Category.find_by_id(2)
 end

  def accessories
    @category = Category.find_by_id(3)
end
end
