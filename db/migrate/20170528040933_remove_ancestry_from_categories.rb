class RemoveAncestryFromCategories < ActiveRecord::Migration[5.0]
  def change
    remove_column :categories, :ancestry, :string
  end
end
