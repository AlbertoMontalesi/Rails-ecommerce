if Category.count === 0
  %w(Clothes Shoes Accessories).each do |name|
    Category.create!(name: name)
  end
else
  puts ' You already have some sections'
end

# Clothes
Category.find_by_id(1).children.create :name => 'Casual'
Category.find_by_id(1).children.create :name => 'Classy'
# Shoes
Category.find_by_id(2).children.create :name => 'Sport'
Category.find_by_id(2).children.create :name => 'Elegant'
# Accessories
Category.find_by_id(3).children.create :name => 'Sunglasses'
Category.find_by_id(3).children.create :name => 'Belts'
