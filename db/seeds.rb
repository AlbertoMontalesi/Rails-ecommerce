if Category.count === 0
  %w(Clothes Shoes Accessories).each do |name|
    Category.create!(name: name)
  end
else
  puts ' You already have some sections'
end

if Subcategory.count === 0 
  # create two  clothes subcategories
  Subcategory.create!(name:'Casual', category_id: 1)
  Subcategory.create!(name:'Classy', category_id: 1)
  # create two  shoes subcategories
  Subcategory.create!(name:'Sport', category_id: 2)
  Subcategory.create!(name:'Sneakers', category_id: 2)
  # create two  accessories subcategories
  Subcategory.create!(name:'Belts', category_id: 3)
  Subcategory.create!(name:'Sunglasses', category_id: 3)
end

if Item.count === 0
  ## create two clothes items
  Item.create!(name: 'T-shirt',
              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus consequat sapien et enim ullamcorper, vel tristique nunc aliquam. Morbi dapibus lorem ut leo molestie venenatis. Morbi at dictum ex, ac elementum metus. Nulla facilisis magna ac erat convallis accumsan. Praesent nec diam ut eros fermentum commodo. Etiam nec dapibus enim. Mauris elementum vulputate enim, non sodales mauris fringilla quis. ',
                price: '10',
                image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Blue_Tshirt.jpg/220px-Blue_Tshirt.jpg', 
                category_id: 1 , 
                subcategory_id: 1)
  Item.create!(name: 'shirt',
              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus consequat sapien et enim ullamcorper, vel tristique nunc aliquam. Morbi dapibus lorem ut leo molestie venenatis. Morbi at dictum ex, ac elementum metus. Nulla facilisis magna ac erat convallis accumsan. Praesent nec diam ut eros fermentum commodo. Etiam nec dapibus enim. Mauris elementum vulputate enim, non sodales mauris fringilla quis. ',
                price: '10',
                image_url: 'http://www.511tactical.com/media/catalog/product/cache/1/small_image/9df78eab33525d08d6e5fb8d27136e95/71200/092/71200_092_01.jpg', 
                category_id: 1 , 
                subcategory_id: 2)


  ## create two shoes items
  Item.create!(name: 'nike',
              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus consequat sapien et enim ullamcorper, vel tristique nunc aliquam. Morbi dapibus lorem ut leo molestie venenatis. Morbi at dictum ex, ac elementum metus. Nulla facilisis magna ac erat convallis accumsan. Praesent nec diam ut eros fermentum commodo. Etiam nec dapibus enim. Mauris elementum vulputate enim, non sodales mauris fringilla quis. ',
                price: '10',
                image_url: 'http://images3.nike.com/is/image/DotCom/PDP_HERO/724979_101_C_PREM/juvenate-womens-shoe.jpg', 
                category_id: 2 , 
                subcategory_id: 3)
  Item.create!(name: 'sneakers',
              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus consequat sapien et enim ullamcorper, vel tristique nunc aliquam. Morbi dapibus lorem ut leo molestie venenatis. Morbi at dictum ex, ac elementum metus. Nulla facilisis magna ac erat convallis accumsan. Praesent nec diam ut eros fermentum commodo. Etiam nec dapibus enim. Mauris elementum vulputate enim, non sodales mauris fringilla quis. ',
                price: '10',
                image_url: 'http://static.highsnobiety.com/wp-content/uploads/2016/06/23091457/best-30-sneakers-2016-so-far-11.jpg', 
                category_id: 2 , 
                subcategory_id: 4)

  ## create two accessories items
  Item.create!(name: 'Belt 1',
              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus consequat sapien et enim ullamcorper, vel tristique nunc aliquam. Morbi dapibus lorem ut leo molestie venenatis. Morbi at dictum ex, ac elementum metus. Nulla facilisis magna ac erat convallis accumsan. Praesent nec diam ut eros fermentum commodo. Etiam nec dapibus enim. Mauris elementum vulputate enim, non sodales mauris fringilla quis. ',
                price: '10',
                image_url: 'http://images.saddlebackleather.com/image/upload/w_1280,h_1280,c_fill/kellynolte-01-50-0003-34-DCB-20140706095703-01.jpg', 
                category_id: 3 , 
                subcategory_id: 5)
  Item.create!(name: 'Belt 2',
              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus consequat sapien et enim ullamcorper, vel tristique nunc aliquam. Morbi dapibus lorem ut leo molestie venenatis. Morbi at dictum ex, ac elementum metus. Nulla facilisis magna ac erat convallis accumsan. Praesent nec diam ut eros fermentum commodo. Etiam nec dapibus enim. Mauris elementum vulputate enim, non sodales mauris fringilla quis. ',
                price: '10',
                image_url: 'https://bisondesigns.com/sites/default/files/Rough%20Cut%20Leather%20Belt%20ws.jpg', 
                category_id: 1 , 
                subcategory_id: 5)
end

puts 'seed completed'