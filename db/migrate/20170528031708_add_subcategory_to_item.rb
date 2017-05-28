class AddSubcategoryToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :subcategory_id, :integer
  end
end
