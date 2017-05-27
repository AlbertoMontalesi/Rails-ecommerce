class Item < ApplicationRecord
  belongs_to :category, dependent: :destroy
end
