class Item < ApplicationRecord
  belongs_to :category, dependent: :destroy
  belongs_to :subcategory, dependent: :destroy
end
