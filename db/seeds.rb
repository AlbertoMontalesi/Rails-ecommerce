if Category.count === 0
  %w(Clothes Shoes Accessories).each do |name|
    Category.create!(name: name)
  end
else
  puts ' You already have some sections'
end

if OrderStatus.count === 0
  %w(InProgress Placed Shipped Cancelled).each do |name|
    OrderStatus.create!(name: name)
  end
else
  puts ' You already have some statuses'
end



if Subcategory.count === 0
  # create two  clothes subcategories
  Subcategory.create!(name: 'Casual', category_id: 1)
  Subcategory.create!(name: 'Classy', category_id: 1)
  # create two  shoes subcategories
  Subcategory.create!(name: 'Sport', category_id: 2)
  Subcategory.create!(name: 'Sneakers', category_id: 2)
  # create two  accessories subcategories
  Subcategory.create!(name: 'Belts', category_id: 3)
  Subcategory.create!(name: 'Sunglasses', category_id: 3)
end


## CREATE ONE USER AND 2 SHOP
User.create!(
  name: 'Alberto',
  email: 'alberto@example.com',
  password: '123456',
  password_confirmation: '123456'
)
Retailer.create!(
  name: 'Shop1',
  email: 'Shop1@example.com',
  password: '123456',
  password_confirmation: '123456'
)
Retailer.create!(
  name: 'Shop2',
  email: 'Shop2@example.com',
  password: '123456',
  password_confirmation: '123456'
)

if Item.count === 0
  ## create 4 clothes items
  ## casual - sub 1
  Item.create!(name: 'T-shirt',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus consequat sapien et enim ullamcorper, vel tristique nunc aliquam. Morbi dapibus lorem ut leo molestie venenatis. Morbi at dictum ex, ac elementum metus. Nulla facilisis magna ac erat convallis accumsan. Praesent nec diam ut eros fermentum commodo. Etiam nec dapibus enim. Mauris elementum vulputate enim, non sodales mauris fringilla quis. ',
               price: '15',
               image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Blue_Tshirt.jpg/220px-Blue_Tshirt.jpg',
               category_id: 1,
               subcategory_id: 1,
               retailer_id: 1)
  Item.create!(name: 'Polo',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus consequat sapien et enim ullamcorper, vel tristique nunc aliquam. Morbi dapibus lorem ut leo molestie venenatis. Morbi at dictum ex, ac elementum metus. Nulla facilisis magna ac erat convallis accumsan. Praesent nec diam ut eros fermentum commodo. Etiam nec dapibus enim. Mauris elementum vulputate enim, non sodales mauris fringilla quis. ',
               price: '25',
               image_url: 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-25162513_lifestyle_t240.jpg',
               category_id: 1,
               subcategory_id: 1,
               retailer_id: 2)
  ## classy - sub 2
  Item.create!(name: 'shirt',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus consequat sapien et enim ullamcorper, vel tristique nunc aliquam. Morbi dapibus lorem ut leo molestie venenatis. Morbi at dictum ex, ac elementum metus. Nulla facilisis magna ac erat convallis accumsan. Praesent nec diam ut eros fermentum commodo. Etiam nec dapibus enim. Mauris elementum vulputate enim, non sodales mauris fringilla quis. ',
               price: '30',
               image_url: 'http://www.511tactical.com/media/catalog/product/cache/1/small_image/9df78eab33525d08d6e5fb8d27136e95/71200/092/71200_092_01.jpg',
               category_id: 1,
               subcategory_id: 2,
               retailer_id: 1)
  Item.create!(name: 'suit',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus consequat sapien et enim ullamcorper, vel tristique nunc aliquam. Morbi dapibus lorem ut leo molestie venenatis. Morbi at dictum ex, ac elementum metus. Nulla facilisis magna ac erat convallis accumsan. Praesent nec diam ut eros fermentum commodo. Etiam nec dapibus enim. Mauris elementum vulputate enim, non sodales mauris fringilla quis. ',
               price: '50',
               image_url: 'http://media.gq.com/photos/582b434f5e05d0d72af09254/master/w_800/25-wardrobe-essentials-dolce-suit.jpg',
               category_id: 1,
               subcategory_id: 2,
               retailer_id: 1)

  ## create 4 shoes items
  ## sport - sub 3
  Item.create!(name: 'nike',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus consequat sapien et enim ullamcorper, vel tristique nunc aliquam. Morbi dapibus lorem ut leo molestie venenatis. Morbi at dictum ex, ac elementum metus. Nulla facilisis magna ac erat convallis accumsan. Praesent nec diam ut eros fermentum commodo. Etiam nec dapibus enim. Mauris elementum vulputate enim, non sodales mauris fringilla quis. ',
               price: '15',
               image_url: 'http://images3.nike.com/is/image/DotCom/PDP_HERO/724979_101_C_PREM/juvenate-womens-shoe.jpg',
               category_id: 2,
               subcategory_id: 3,
               retailer_id: 2)
  Item.create!(name: 'adidas',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus consequat sapien et enim ullamcorper, vel tristique nunc aliquam. Morbi dapibus lorem ut leo molestie venenatis. Morbi at dictum ex, ac elementum metus. Nulla facilisis magna ac erat convallis accumsan. Praesent nec diam ut eros fermentum commodo. Etiam nec dapibus enim. Mauris elementum vulputate enim, non sodales mauris fringilla quis. ',
               price: '12',
               image_url: 'http://demandware.edgesuite.net/sits_pod20-adidas/dw/image/v2/aaqx_prd/on/demandware.static/-/Sites-adidas-products/en_US/dw98442ad5/zoom/BA9056_01_standard.jpg?sw=2000&sfrm=jpg',
               category_id: 2,
               subcategory_id: 3,
               retailer_id: 1)
  ## sneakers - sub 4
  Item.create!(name: 'converse',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus consequat sapien et enim ullamcorper, vel tristique nunc aliquam. Morbi dapibus lorem ut leo molestie venenatis. Morbi at dictum ex, ac elementum metus. Nulla facilisis magna ac erat convallis accumsan. Praesent nec diam ut eros fermentum commodo. Etiam nec dapibus enim. Mauris elementum vulputate enim, non sodales mauris fringilla quis. ',
               price: '10',
               image_url: 'http://static.highsnobiety.com/wp-content/uploads/2016/06/23091457/best-30-sneakers-2016-so-far-11.jpg',
               category_id: 2,
               subcategory_id: 4,
               retailer_id: 2)
  Item.create!(name: 'gucci',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus consequat sapien et enim ullamcorper, vel tristique nunc aliquam. Morbi dapibus lorem ut leo molestie venenatis. Morbi at dictum ex, ac elementum metus. Nulla facilisis magna ac erat convallis accumsan. Praesent nec diam ut eros fermentum commodo. Etiam nec dapibus enim. Mauris elementum vulputate enim, non sodales mauris fringilla quis. ',
               price: '20',
               image_url: 'https://media.gucci.com/style/DarkGray_South_0_160_316x316/1473844504/452312_D3VN0_1060_001_099_0000_Light-Leather-low-top-platform-sneaker.jpg',
               category_id: 2,
               subcategory_id: 4,
               retailer_id: 2)

  ## create 4 accessories items
  ## belt - sub 5
  Item.create!(name: 'Belt 1',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus consequat sapien et enim ullamcorper, vel tristique nunc aliquam. Morbi dapibus lorem ut leo molestie venenatis. Morbi at dictum ex, ac elementum metus. Nulla facilisis magna ac erat convallis accumsan. Praesent nec diam ut eros fermentum commodo. Etiam nec dapibus enim. Mauris elementum vulputate enim, non sodales mauris fringilla quis. ',
               price: '10',
               image_url: 'http://images.saddlebackleather.com/image/upload/w_1280,h_1280,c_fill/kellynolte-01-50-0003-34-DCB-20140706095703-01.jpg',
               category_id: 3,
               subcategory_id: 5,
               retailer_id: 2)
  Item.create!(name: 'Belt 2',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus consequat sapien et enim ullamcorper, vel tristique nunc aliquam. Morbi dapibus lorem ut leo molestie venenatis. Morbi at dictum ex, ac elementum metus. Nulla facilisis magna ac erat convallis accumsan. Praesent nec diam ut eros fermentum commodo. Etiam nec dapibus enim. Mauris elementum vulputate enim, non sodales mauris fringilla quis. ',
               price: '20',
               image_url: 'https://bisondesigns.com/sites/default/files/Rough%20Cut%20Leather%20Belt%20ws.jpg',
               category_id: 3,
               subcategory_id: 5,
               retailer_id: 2)
  ## sunglasses - sub 6
  Item.create!(name: 'Rayban',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus consequat sapien et enim ullamcorper, vel tristique nunc aliquam. Morbi dapibus lorem ut leo molestie venenatis. Morbi at dictum ex, ac elementum metus. Nulla facilisis magna ac erat convallis accumsan. Praesent nec diam ut eros fermentum commodo. Etiam nec dapibus enim. Mauris elementum vulputate enim, non sodales mauris fringilla quis. ',
               price: '30',
               image_url: 'http://cdn2.jomashop.com/media/catalog/product/r/a/rayban-aviator-matte-gold-brown-58mm-unisex-sunglasses-11285-rb8029k-040kn3-5814.jpg',
               category_id: 3,
               subcategory_id: 6,
               retailer_id: 1)
  Item.create!(name: 'oakley',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus consequat sapien et enim ullamcorper, vel tristique nunc aliquam. Morbi dapibus lorem ut leo molestie venenatis. Morbi at dictum ex, ac elementum metus. Nulla facilisis magna ac erat convallis accumsan. Praesent nec diam ut eros fermentum commodo. Etiam nec dapibus enim. Mauris elementum vulputate enim, non sodales mauris fringilla quis. ',
               price: '20',
               image_url: 'https://www.framesdirect.com/product_elarge_images/oakley-crankshaft-sunglasses-OO9239-01.jpg',
               category_id: 3,
               subcategory_id: 6,
               retailer_id: 2)

end



puts 'seed completed'
