#user to log in
user_first_list = [

  [ "Michael Porter", "bigfoot@gmail.com", "frogtime", "frogtime", "Founder"],

]

user_first_list.each do |user_name, email, password, password_confirmation, title |
  User.create( user_name: user_name, email: email, password: password, password_confirmation: password_confirmation, title: title)
end

#A few root departments
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
  [ "Streaming Devices", "5", "PUBnqS1qcvk", "lPwlfbeQOBg", 1],

  ]

department_root_list.each do |name, ancestry, youtube_id, youtube_thumbnail_id, user_id |
  Department.create!( department_name: name, ancestry: ancestry, youtube_id: youtube_id, youtube_thumbnail_id: youtube_thumbnail_id, user_id: user_id)
end


#a few products for initial testing
product_list = [

  [ "Roku 3", 11, "Eqm8r1jXAt8", 39.99, 35.99],  
  [ "Roku 2", 11, "Eqm8r1jXAt8", 49.99, 45.99],
  [ "Apple TV", 11, "Eqm8r1jXAt8", 50.01, 50.01],  
  [ "Roku 4", 11, "Eqm8r1jXAt8", 9930.09, 30.09],
  [ "Nvidia Shield", 11, "Eqm8r1jXAt8", 25.99, 25.99], 
  [ "Roku 1", 11, "Eqm8r1jXAt8", 49.99, 49.99],
  [ "Google Whatever", 11, "Eqm8r1jXAt8", 22.99, 22.99],
  [ "Amazon Fire", 11, "Eqm8r1jXAt8", 14.99, 14.99],
]

product_list.each do |product_name, department_id, youtube_thumbnail_id, msrp, expected |
  Product.create( product_name: product_name, department_id: department_id, youtube_thumbnail_id: youtube_thumbnail_id, msrp: msrp, expected: expected)
end

#a few relationships for initial testing.
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

#faker - expanding the database with faker

#fakeusers - 100 total
99.times do |n|
  user_name  = Faker::Name.name
  email = Faker::Internet.unique.email
  password = "password"
  title = Faker::Name.title
  User.create!(user_name:  user_name,
               email: email,
               password:              password,
               password_confirmation: password,
               title: title)
end

users = User.all

#fakedepartments-maybe 40 total? I should fix this so they "tree" appropriately

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

#departments with no children should have products
no_kids = []
departments = Department.all
departments.each do |c|
  if c.is_childless?
    no_kids.push(c.id)
  end
end

#departments with children, these can have other departments
kids = []
departments.each do |c|
  if c.has_children?
    kids.push(c.id)
  end
end

#assemble an array of departments that aren't root, roots can't have followers
no_roots = []
departments.each do |c|
  unless c.is_root?
    no_roots.push(c.id)
  end
end

#the first critic's video should be the index vid
critic_first_list = [
  [ 1, 1, "Rd8n74XDQUY"]
]

critic_first_list.each do |department_id, user_id, youtube_id |
  Critic.create( department_id: department_id, 
                user_id: user_id, 
                youtube_id: youtube_id)
end

#departments with no kids should have products. they all get 3 critics
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

#each critic makes 5 questions, and 20 feature_names with different types
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
  end
end

questions = Question.all

#each question gets 3 answers
3.times do |n|
  questions.each do |k|
    question_id = Question.find(k).id
    answer_content = Faker::Zelda.character
     Answer.create!(question_id: question_id,
                    answer_content: answer_content)
  end
end

#fakeproducts - a small handful
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

#each critic has a review. We browse based on critics/reviews, so products without reviews
#aren't visible to the general user
critics.each do |n|
  critic_id = Critic.find(n).id
  product_id = products.ids.sample
  user_id = 1
  rank = Faker::Number.between(1, 15)
  title = Faker::Company.buzzword
  color = Faker::Color.color_name
  youtube_id = "jK7SFNx5mug"

  Review.create!(product_id: product_id,
                 critic_id: critic_id,
                 user_id: user_id,
                 rank: rank,
                 title: title,
                 color: color,
                 youtube_id: youtube_id)
end

reviews = Review.all

#every review gets 20 features of 4 different types
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


#fakeaddresses - make 3 addresses for each user, including a primary and secondary
(1..3).each do |k|
  users.each do |n|
    user = User.find(n)
    user_id = user.id
    address_name = "home"
    street = Faker::Address.street_address
    city = Faker::Address.city
    state = Faker::Address.state
    zip_code = Faker::Address.zip
    status = k
      if k == 2
        address_name = "Mom's House"
        status = 2
      elsif k == 3
        address_name = "Grandma's House"
        status = 2
      end
    Address.create!(user_id: user_id,
                    status: status,
                    address_name: address_name,
                    street: street,
                    city: city,
                    state: state,
                    zip_code: zip_code)
  end
end

addresses = Address.all

#make a single order to the users primary address
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

orders = Order.all

products = Product.all

#every order consists of 3 ordered products
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

#the cart is just random count numbers, should be an evaluation
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
