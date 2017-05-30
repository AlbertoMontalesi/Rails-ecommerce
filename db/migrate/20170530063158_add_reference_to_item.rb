class AddReferenceToItem < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :retailer, foreign_key: true 
  end
end
