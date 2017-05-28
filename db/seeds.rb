if Category.count === 0
  %w(Clothes Shoes Accessories).each do |name|
    Category.create!(name: name)
  end
else
  puts ' You already have some sections'
end


Subcategory.create!(name:'Casual', category_id: 1)
Subcategory.create!(name:'Classy', category_id: 1)

Subcategory.create!(name:'Sport', category_id: 2)
Subcategory.create!(name:'Sneakers', category_id: 2)

Subcategory.create!(name:'Belts', category_id: 3)
Subcategory.create!(name:'Sunglasses', category_id: 3)
