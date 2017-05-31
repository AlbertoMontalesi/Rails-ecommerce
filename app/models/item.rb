class Item < ApplicationRecord
  belongs_to :category, dependent: :destroy
  belongs_to :subcategory, dependent: :destroy
  belongs_to :retailer, dependent: :destroy

  validates :name, :description, :price, :image_url, :category_id, :subcategory_id, presence: true 
end
