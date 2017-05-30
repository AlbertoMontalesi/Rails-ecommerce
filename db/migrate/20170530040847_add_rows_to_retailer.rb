class AddRowsToRetailer < ActiveRecord::Migration[5.0]
  def change
    add_column :retailers, :name, :string
    add_column :retailers, :address, :string
    add_column :retailers, :profile_url, :string
    add_column :retailers, :description, :text
    add_reference :retailers, :item, foreign_key: true  
  end
end
