class Item < ApplicationRecord
  belongs_to :category, dependent: :destroy
  belongs_to :subcategory, dependent: :destroy
  belongs_to :retailer, dependent: :destroy
  has_many :order_items
  default_scope { where(active: true) }

  validates :name, :description, :price, :image_url, :category_id, :subcategory_id, presence: true
end
