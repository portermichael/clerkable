user_first_list = [

  [ "Michael Porter", "bigfoot@gmail.com", "frogtime", "frogtime", "Mike Porter"],

]

user_first_list.each do |user_name, email, password, password_confirmation, critic_name |
  User.create( user_name: user_name, email: email, password: password, password_confirmation: password_confirmation, critic_name: critic_name)
end

#1-10
department_root_list = [

  [ "Books & Audible", nil, "BzmFbfCEv9k", "lPwlfbeQOBg", 1],
  [ "Movies", nil, "PUBnqS1qcvk", "lPwlfbeQOBg", 1],
  [ "Music", nil, "lN-rVlMIJZs", "lPwlfbeQOBg", 1],
  [ "Games", nil, "BzmFbfCEv9k", "lPwlfbeQOBg", 1],
  [ "Electronics", nil, "PUBnqS1qcvk", "lPwlfbeQOBg", 1],
  [ "Computers", nil, "lN-rVlMIJZs", "lPwlfbeQOBg", 1],
  [ "Home and Garden", nil, "BzmFbfCEv9k", "lPwlfbeQOBg", 1],
  [ "Tools", nil, "PUBnqS1qcvk", "lPwlfbeQOBg", 1],
  [ "Beauty & Health", nil, "lN-rVlMIJZs", "lPwlfbeQOBg", 1],
  [ "Grocery", nil, "BzmFbfCEv9k", "lPwlfbeQOBg", 1],

  ]

department_root_list.each do |name, ancestry, youtube_id, youtube_thumbnail_id, user_id |
  Department.create!( department_name: name, ancestry: ancestry, youtube_id: youtube_id, youtube_thumbnail_id: youtube_thumbnail_id, user_id: user_id)
end

#10-20
department_first_list = [

  [ "Books", "1", "PUBnqS1qcvk", "lPwlfbeQOBg"],
  [ "Kindle Books", "1", "lN-rVlMIJZs", "lPwlfbeQOBg"],
  [ "Children's Books", "1", "BzmFbfCEv9k", "lPwlfbeQOBg"],
  [ "Textbooks", "1", "PUBnqS1qcvk", "lPwlfbeQOBg"],
  [ "Magazines", "1", "lN-rVlMIJZs", "lPwlfbeQOBg"],
  [ "Movies & TV", "2", "BzmFbfCEv9k", "lPwlfbeQOBg"],
  [ "Blu-ray", "2", "PUBnqS1qcvk", "lPwlfbeQOBg"],
  [ "Amazon Video", "2", "lN-rVlMIJZs", "lPwlfbeQOBg"],
  [ "CDs and Vinyl", "3", "BzmFbfCEv9k", "lPwlfbeQOBg"],
  [ "Digital Music", "3", "PUBnqS1qcvk", "lPwlfbeQOBg"],
  [ "Musical Instruments", "3", "lN-rVlMIJZs", "lPwlfbeQOBg"],
  [ "Headphones", "3", "BzmFbfCEv9k", "lPwlfbeQOBg"],
  [ "Video Games", "4", "PUBnqS1qcvk", "lPwlfbeQOBg"],
  [ "BoardGames", "4", "lN-rVlMIJZs", "lPwlfbeQOBg"],
  [ "Live Games", "4", "BzmFbfCEv9k", "lPwlfbeQOBg"],
  [ "Streaming Devices", "5", "PUBnqS1qcvk", "lPwlfbeQOBg"],
  [ "Home Audio", "5", "lN-rVlMIJZs", "lPwlfbeQOBg"],
  [ "Camera and Photo", "5", "BzmFbfCEv9k", "lPwlfbeQOBg"],
  [ "Cell Phones", "5", "PUBnqS1qcvk", "lPwlfbeQOBg"],
  [ "Headphones", "5", "lN-rVlMIJZs", "lPwlfbeQOBg"],

  ]

department_first_list.each do |name, ancestry, youtube_id, youtube_thumbnail_id |
  Department.create( department_name: name, ancestry: ancestry, youtube_id: youtube_id, youtube_thumbnail_id: youtube_thumbnail_id)
end

department_second_list = [

  [ "PS4", "4/23", "BzmFbfCEv9k", "lPwlfbeQOBg"],
  [ "Xbox One", "4/23", "PUBnqS1qcvk", "lPwlfbeQOBg"],
  [ "Wii U", "4/23", "lN-rVlMIJZs", "lPwlfbeQOBg"],
  [ "PC", "4/23", "BzmFbfCEv9k", "lPwlfbeQOBg"],
  [ "3DS", "4/23", "PUBnqS1qcvk", "lPwlfbeQOBg"],
  [ "PS3", "4/23", "lN-rVlMIJZs", "lPwlfbeQOBg"],
  [ "Xbox 360", "4/23", "BzmFbfCEv9k", "lPwlfbeQOBg"],

  ]

department_second_list.each do |name, ancestry, youtube_id, youtube_thumbnail_id |
  Department.create( department_name: name, ancestry: ancestry, youtube_id: youtube_id, youtube_thumbnail_id: youtube_thumbnail_id)
end


department_list = [

  [ "Consoles", "4/23/31", "PUBnqS1qcvk", "lPwlfbeQOBg"],
  [ "Games", "4/23/31", "lN-rVlMIJZs", "lPwlfbeQOBg"],
  [ "Accessories", "4/23/31", "BzmFbfCEv9k", "lPwlfbeQOBg"],

]

department_list.each do |name, ancestry, youtube_id, youtube_thumbnail_id |
  Department.create( department_name: name, ancestry: ancestry, youtube_id: youtube_id, youtube_thumbnail_id: youtube_thumbnail_id)
end

product_list = [

  [ "Roku 3", 26, "Eqm8r1jXAt8", 39.99, 35.99],  
  [ "Roku 2", 26, "Eqm8r1jXAt8", 49.99, 45.99],
  [ "Apple TV", 26, "Eqm8r1jXAt8", 50.01, 50.01],  
  [ "Roku 4", 26, "Eqm8r1jXAt8", 9930.09, 30.09],
  [ "Nvidia Shield", 26, "Eqm8r1jXAt8", 25.99, 25.99], 
  [ "Roku 1", 26, "Eqm8r1jXAt8", 49.99, 49.99],
  [ "Google Whatever", 26, "Eqm8r1jXAt8", 22.99, 22.99],
  [ "Amazon Fire", 26, "Eqm8r1jXAt8", 14.99, 14.99],
]

product_list.each do |product_name, department_id, youtube_thumbnail_id, msrp, expected |
  Product.create( product_name: product_name, department_id: department_id, youtube_thumbnail_id: youtube_thumbnail_id, msrp: msrp, expected: expected)
end

relationship_list = [

  [5, 26, 1],
  [5, 40, 1],
  [5, 31, 1],
  [5, 32, 1],
  [5, 33, 1],
  [26, 31, 1],

]

relationship_list.each do |department_id, follower_id, user_id |
  Relationship.create( department_id: department_id, follower_id: follower_id, user_id: user_id )
end

#faker - Let's make fake databases of everything!
#fakeusers
99.times do |n|
  user_name  = Faker::Name.name
  email = Faker::Internet.unique.email
  password = "password"
  critic_name = Faker::Name.title
  User.create!(user_name:  user_name,
               email: email,
               password:              password,
               password_confirmation: password,
               critic_name: critic_name)
end
users = User.all
#fakedepartments
25.times do |n|
  department_name = Faker::Commerce.unique.department
  ancestry = Faker::Number.between(1,10)
  youtube_id = "jK7SFNx5mug"
  youtube_thumbnail_id = "Eqm8r1jXAt8"
  user_id = users.sample

  Department.create!(department_name: department_name,
                     ancestry: ancestry,
                     youtube_id: youtube_id,
                     youtube_thumbnail_id: youtube_thumbnail_id,
                     user_id: user_id)
end

#assemble an array of departments with no children
#these are the departments that should have products
no_kids = []
departments = Department.all
departments.each do |c|
  if c.is_childless?
    no_kids.push(c.id)
  end
end

#fakecritics - these are the people who evaluate a group of product based on whatever(x) merits
#i could work this into user, but they need their own individual videos

critic_first_list = [

  [ 1, 1, "Rd8n74XDQUY"],

]

user_first_list.each do |department_id, user_id, youtube_id |
  Critic.create( department_id: department_id, 
                user_id: user_id, 
                youtube_id: youtube_id)
end


3.times do |n|
  no_kids.each do |k|
    no_kid = Department.find(k)
    department_id = no_kid.id
    user_id = users.ids.sample
    youtube_id = "jK7SFNx5mug"

    Critic.create!(department_id: department_id,
                   user_id: user_id,
                   youtube_id: youtube_id)
  end
end

critics = Critic.all
5.times do |n|
  critics.each do |k|
    critic = Critic.find(k)
    critic_id = critic.id
    user_id = critic.user_id
    question_content = Faker::Zelda.game

    (1..4).each do |y|
      feature_name_type = y
      feature_name = Faker::Pokemon.location
      FeatureName.create!(critic_id: critic_id,
                          feature_name: feature_name,
                          feature_name_type: feature_name_type,
                          user_id: user_id)
    end

    Question.create!(critic_id: critic_id,
                     question_content: question_content)
    3.times do |z|
      answer_content = Faker::Zelda.character
      Answer.create!(critic_id: critic_id,
                     answer_content: answer_content)
    end
  end
end

#fakeproducts
100.times do |n|
  product_name = Faker::Commerce.product_name
  department_id = no_kids.sample
  user_id = users.ids.sample
  youtube_thumbnail_id = "Eqm8r1jXAt8"
  msrp = Faker::Commerce.price
  expected = Faker::Commerce.price

  Product.create!(product_name: product_name,
                  department_id: department_id,
                  user_id: user_id,
                  youtube_thumbnail_id: youtube_thumbnail_id,
                  msrp: msrp,
                  expected: expected)
end

products = Product.all
products.each do |n|
  product = Product.find(n)
  product_id = product.id
  critic_id = critics.ids.sample
  user_id = 1
  youtube_id = "jK7SFNx5mug"

  Review.create!(product_id: product_id,
                 critic_id: critic_id,
                 user_id: user_id,
                 youtube_id: youtube_id)
end

reviews = Review.all

5.times do |n|
  reviews.each do |k|
    review = Review.find(k)
    review_id = review.id
    user_id = review.user_id

    (1..4).each do |y|
      feature_type = y
      feature_content = Faker::Pokemon.name
      Feature.create!(review_id: review_id,
                      feature_content: feature_content,
                      feature_type: feature_type,
                      user_id: user_id)
    end

  end
end
#fake relationships
#assemble an array of departments that have children
#we aren't adding children to departments that have products
#the app should also function wide, rather than deep, this helps that idea
kids = []
departments.each do |c|
  if c.has_children?
    kids.push(c.id)
  end
end

#assemble an array of departments that aren't root
#we don't want root following a department
no_roots = []
departments.each do |c|
  unless c.is_root?
    no_roots.push(c.id)
  end
end

#Create an array of dictionaries. The dictionary is a pair of key value pairs, kids(depts with kids) and no_roots
#(depts that aren't root)
d = {}
dept_array = []
20.times do |n|
  d = { :department_id => kids.sample, :follower_id => no_roots.sample }
  dept_array.push(d)
end

#Might get relationship duplicates, which are invalid. uniq removes duplicates in an array. I have 50 departments.
#removing dups - pass block that compares dept_id and follower_id to all other dept and follower_ids and removes dups
#this isn't working for some reason...

#work on this, don't remember the logic behind it

dept_array.uniq! { |a_dept| [a_dept[:department_id], a_dept[:follower_id] ] }

#iterate over each array and create department and follower

#work on this, don't remember the logic behind it
dept_array.each do |dept|
  department_id = dept[:department_id]
  follower_id = dept[:follower_id]
  user_id = 1

  Relationship.create!(department_id: department_id,
                       follower_id: follower_id,
                       user_id: user_id)
end


#fakeaddresses
#create a primary and secondary address for mailing

users.each do |n|
  user = User.find(n)
  user_id = user.id
  status = 1
  address_name = "home"
  street = Faker::Address.street_address
  city = Faker::Address.city
  state = Faker::Address.state
  zip_code = Faker::Address.zip

  Address.create!(user_id: user_id,
                  status: status,
                  address_name: address_name,
                  street: street,
                  city: city,
                  state: state,
                  zip_code: zip_code)
end

users.each do |n|
  user = User.find(n)
  user_id = user.id
  status = 2
  address_name = "Mom's House"
  street = Faker::Address.street_address
  city = Faker::Address.city
  state = Faker::Address.state
  zip_code = Faker::Address.zip

  Address.create!(user_id: user_id,
                  status: status,
                  address_name: address_name,
                  street: street,
                  city: city,
                  state: state,
                  zip_code: zip_code)
end

users.each do |n|
  user = User.find(n)
  user_id = user.id
  status = 2
  address_name = "Grandma's House"
  street = Faker::Address.street_address
  city = Faker::Address.city
  state = Faker::Address.state
  zip_code = Faker::Address.zip

  Address.create!(user_id: user_id,
                  status: status,
                  address_name: address_name,
                  street: street,
                  city: city,
                  state: state,
                  zip_code: zip_code)
end
addresses = Address.all
users.each do |n|
  user = User.find(n)
  user_id = user.id
  addresses = user.addresses
  status = 1
  order_date = Faker::Time.between(DateTime.now - 4, DateTime.now - 3)
  prepare_date = Faker::Time.between(DateTime.now - 3, DateTime.now - 2)
  ship_date = Faker::Time.between(DateTime.now - 2, DateTime.now - 1)
  receive_date = Faker::Time.between(DateTime.now - 1, DateTime.now)
  address_name = addresses.first.address_name
  street = addresses.first.street
  city = addresses.first.city
  zip_code = addresses.first.zip_code
  pretotal = Faker::Commerce.price
  tax = Faker::Commerce.price
  total = pretotal + tax


  Order.create!(user_id: user_id,
                status: status,
                order_date: order_date,
                prepare_date: prepare_date,
                ship_date: ship_date,
                receive_date: receive_date,
                address_name: address_name,
                street: street,
                city: city,
                zip_code: zip_code,
                pretotal: pretotal,
                tax: tax,
                total: total)
end

users.each do |n|
  user = User.find(n)
  user_id = user.id
  addresses = User.find(n).addresses
  status = 1
  order_date = Faker::Time.between(DateTime.now - 4, DateTime.now - 3)
  prepare_date = Faker::Time.between(DateTime.now - 3, DateTime.now - 2)
  ship_date = Faker::Time.between(DateTime.now - 2, DateTime.now - 1)
  receive_date = Faker::Time.between(DateTime.now - 1, DateTime.now)
  address_name = addresses.first.address_name
  street = addresses.first.street
  city = addresses.first.city
  zip_code = addresses.first.zip_code
  pretotal = Faker::Commerce.price
  tax = Faker::Commerce.price
  total = pretotal + tax


  Order.create!(user_id: user_id,
                status: status,
                order_date: order_date,
                prepare_date: prepare_date,
                ship_date: ship_date,
                receive_date: receive_date,
                address_name: address_name,
                street: street,
                city: city,
                zip_code: zip_code,
                pretotal: pretotal,
                tax: tax,
                total: total)
end

orders = Order.all
products = Product.all


3.times do |n|
  orders.each do |k|
    order = Order.find(k)
    order_id = order.id
    product_id = products.sample
    price = Faker::Commerce.price
    
    OrderedProduct.create!(order_id: order_id,
                            product_id: product_id,
                            price: price)
  end
end

users.each do |n|
  user = User.find(n)
  user_id = user.id
  count = Faker::Number.between(1, 10)
  status = 1

  Cart.create!(user_id: user_id,
               count: count,
               status: status)
end

users.each do |n|
  user = User.find(n)
  user_id = user.id
  count = Faker::Number.between(1, 10)
  status = 2

  Cart.create!(user_id: user_id,
               count: count,
               status: status)
end

carts = Cart.all

3.times do |n|
  carts.each do |k|
    cart = Cart.find(k)
    cart_id = cart.id
    product_id = products.sample

    CartedProduct.create!(cart_id: cart_id,
                           product_id: product_id)
  end
end

