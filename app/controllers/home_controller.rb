class HomeController < ApplicationController
  def index
    @main_categories = Category.where(ancestry: nil)
  end
end
