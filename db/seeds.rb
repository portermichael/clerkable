#1-10
department_root_list = [

  [ "Books & Audible", nil, "BzmFbfCEv9k", "lPwlfbeQOBg"],
  [ "Movies", nil, "PUBnqS1qcvk", "lPwlfbeQOBg"],
  [ "Music", nil, "lN-rVlMIJZs", "lPwlfbeQOBg"],
  [ "Games", nil, "BzmFbfCEv9k", "lPwlfbeQOBg"],
  [ "Electronics", nil, "PUBnqS1qcvk", "lPwlfbeQOBg"],
  [ "Computers", nil, "lN-rVlMIJZs", "lPwlfbeQOBg"],
  [ "Home and Garden", nil, "BzmFbfCEv9k", "lPwlfbeQOBg"],
  [ "Tools", nil, "PUBnqS1qcvk", "lPwlfbeQOBg"],
  [ "Beauty & Health", nil, "lN-rVlMIJZs", "lPwlfbeQOBg"],
  [ "Grocery", nil, "BzmFbfCEv9k", "lPwlfbeQOBg"],

  ]

department_root_list.each do |name, ancestry, youtube_id, youtube_thumbnail_id |
  Department.create( department_name: name, ancestry: ancestry, youtube_id: youtube_id, youtube_thumbnail_id: youtube_thumbnail_id)
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
  [ "Streaming Devices", "5", "PUBnqS1qcvk", "lPwlfbeQOBg", "User Interface", "Computing Power", "Value", "Style", "Max Resolution", "Stores", "Headphone Jack", "Remote", "Video", "Audio", "Weight", "Size", "Color", "Networking", "Screen Mirror"],
  [ "Home Audio", "5", "lN-rVlMIJZs", "lPwlfbeQOBg"],
  [ "Camera and Photo", "5", "BzmFbfCEv9k", "lPwlfbeQOBg"],
  [ "Cell Phones", "5", "PUBnqS1qcvk", "lPwlfbeQOBg"],
  [ "Headphones", "5", "lN-rVlMIJZs", "lPwlfbeQOBg"],

  ]

department_first_list.each do |name, ancestry, youtube_id, youtube_thumbnail_id, first_glance_name, second_glance_name, third_glance_name, fourth_glance_name, fifth_glance_name, first_feature_name, second_feature_name, third_feature_name, fourth_feature_name, fifth_feature_name, first_spec_name, second_spec_name, third_spec_name, fourth_spec_name, fifth_spec_name |
  Department.create( department_name: name, ancestry: ancestry, youtube_id: youtube_id, youtube_thumbnail_id: youtube_thumbnail_id, first_glance_name: first_glance_name, second_glance_name: second_glance_name, third_glance_name: third_glance_name, fourth_glance_name: fourth_glance_name, fifth_glance_name: fifth_glance_name, first_feature_name: first_feature_name, second_feature_name: second_feature_name, third_feature_name: third_feature_name, fourth_feature_name: fourth_feature_name, fifth_feature_name: fifth_feature_name, first_spec_name: first_spec_name, second_spec_name: second_spec_name, third_spec_name: third_spec_name, fourth_spec_name: fourth_spec_name, fifth_spec_name: fifth_spec_name)
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
  [ "Uncharted 4", "4/23/31/39", "PUBnqS1qcvk", "lPwlfbeQOBg"],
  [ "Overwatch", "4/23/31/39", "lN-rVlMIJZs", "lPwlfbeQOBg"],
  [ "Doom", "4/23/31/39", "BzmFbfCEv9k", "lPwlfbeQOBg"],
  [ "Batman", "4/23/31/39", "PUBnqS1qcvk", "lPwlfbeQOBg"],
  [ "Little Big Planet", "4/23/31/39", "lN-rVlMIJZs", "lPwlfbeQOBg"],
  [ "GT Sport", "4/23/31/39", "BzmFbfCEv9k", "lPwlfbeQOBg"],
  [ "Valkyria Chronicles", "4/23/31/39", "PUBnqS1qcvk", "lPwlfbeQOBg"],
  [ "No Man's Sky", "4/23/31/39", "lN-rVlMIJZs", "lPwlfbeQOBg"],

]

department_list.each do |name, ancestry, youtube_id, youtube_thumbnail_id |
  Department.create( department_name: name, ancestry: ancestry, youtube_id: youtube_id, youtube_thumbnail_id: youtube_thumbnail_id)
end

product_list = [

  [ "Roku 3", 26, "jK7SFNx5mug", "Eqm8r1jXAt8", 39.99, 35.99, 'Amazon', 35.99, "https://www.amazon.com/Logitech-Wireless-Mouse-Large-Computer/dp/B003NR57BY/ref=lp_11036491_1_1?s=pc&ie=UTF8&qid=1470870088&sr=1-1", "Walmart", 35.99, "https://www.amazon.com/Logitech-Wireless-Mouse-Large-Computer/dp/B003NR57BY/ref=lp_11036491_1_1?s=pc&ie=UTF8&qid=1470870088&sr=1-1", "Target", 35.99, "#", "Radio", 35.99, "#", "BestBuy", 35.99, "#", "8/10", "7/10", "8/10", "8/10", "1080p", "Amazon", "No", "Remote/Phone", "HDMI", "HDMI/Analog L/R", "3.5oz", "3.7inX3.7inX1.2in", "Black", "802.11", "On Android/Windows", "High Quality, Voice Search, Mobile App, Headphone Jack, Connect on the Go"],
  [ "Roku 2", 26, "jK7SFNx5mug", "Eqm8r1jXAt8", 49.99, 45.99, 'Amazon', 45.99, "https://www.amazon.com/Logitech-Wireless-Mouse-Large-Computer/dp/B003NR57BY/ref=lp_11036491_1_1?s=pc&ie=UTF8&qid=1470870088&sr=1-1", "Walmart", 35.99, "#", "Target", 35.99, "#", "Radio", 35.99, "#", "BestBuy", 35.99, "#", "8/10", "7/10", "8/10", "8/10", "1080p", "Amazon", "No", "Remote/Phone", "HDMI", "HDMI/Analog L/R", "3.5oz", "3.7inX3.7inX1.2in", "Black", "802.11", "On Android/Windows", "Great Price Point, Mobile App, Connect on the Go"],
  [ "Apple TV", 26, "jK7SFNx5mug", "Eqm8r1jXAt8", 50.01, 50.01, 'Amazon', 50.01, "https://www.amazon.com/Logitech-Wireless-Mouse-Large-Computer/dp/B003NR57BY/ref=lp_11036491_1_1?s=pc&ie=UTF8&qid=1470870088&sr=1-1", "Walmart", 35.99, "#", "Target", 35.99, "#", "Radio", 35.99, "#", "BestBuy", 35.99, "#", "8/10", "7/10", "8/10", "8/10", "1080p", "Amazon", "No", "Remote/Phone", "HDMI", "HDMI/Analog L/R", "3.5oz", "3.7inX3.7inX1.2in", "Black", "802.11", "On Android/Windows", "High Quality"],
  [ "Roku 4", 26, "jK7SFNx5mug", "Eqm8r1jXAt8", 30.09, 30.09, 'Amazon', 30.09, "https://www.amazon.com/Logitech-Wireless-Mouse-Large-Computer/dp/B003NR57BY/ref=lp_11036491_1_1?s=pc&ie=UTF8&qid=1470870088&sr=1-1", "Walmart", 35.99, "#", "Target", 35.99, "#", "Radio", 35.99, "#", "BestBuy", 35.99, "#", "8/10", "7/10", "8/10", "8/10", "1080p", "Amazon", "No", "Remote/Phone", "HDMI", "HDMI/Analog L/R", "3.5oz", "3.7inX3.7inX1.2in", "Black", "802.11", "On Android/Windows", "Highest End Device, 4K Content!, Lost Remote Finder, Headphone Jack, Voice Search"],
  [ "Nvidia Shield", 26, "jK7SFNx5mug", "Eqm8r1jXAt8", 25.99, 25.99, 'Amazon', 25.99, "https://www.amazon.com/Logitech-Wireless-Mouse-Large-Computer/dp/B003NR57BY/ref=lp_11036491_1_1?s=pc&ie=UTF8&qid=1470870088&sr=1-1", "Walmart", 35.99, "#", "Target", 35.99, "#", "Radio", 35.99, "#", "BestBuy", 35.99, "#", "8/10", "7/10", "8/10", "8/10", "1080p", "Amazon", "No", "Remote/Phone", "HDMI", "HDMI/Analog L/R", "3.5oz", "3.7inX3.7inX1.2in", "Black", "802.11", "On Android/Windows", "High End Product, Great for Gaming"],
  [ "Roku 1", 26, "jK7SFNx5mug", "Eqm8r1jXAt8", 49.99, 49.99, 'Amazon', 49.99, "https://www.amazon.com/Logitech-Wireless-Mouse-Large-Computer/dp/B003NR57BY/ref=lp_11036491_1_1?s=pc&ie=UTF8&qid=1470870088&sr=1-1", "Walmart", 35.99, "#", "Target", 35.99, "#", "Radio", 35.99, "#", "BestBuy", 35.99, "#", "8/10", "7/10", "8/10", "8/10", "1080p", "Amazon", "No", "Remote/Phone", "HDMI", "HDMI/Analog L/R", "3.5oz", "3.7inX3.7inX1.2in", "Black", "802.11", "On Android/Windows", "Great Price Point, Mobile App, Connect on the Go"],
  [ "Google Whatever", 26, "jK7SFNx5mug", 22.99, 22.99, 'Amazon', 22.99, "https://www.amazon.com/Logitech-Wireless-Mouse-Large-Computer/dp/B003NR57BY/ref=lp_11036491_1_1?s=pc&ie=UTF8&qid=1470870088&sr=1-1", "Walmart", 35.99, "#", "Eqm8r1jXAt8", "Target", 35.99, "#", "Radio", 35.99, "#", "BestBuy", 35.99, "#", "8/10", "7/10", "8/10", "8/10", "1080p", "Amazon", "No", "Remote/Phone", "HDMI", "HDMI/Analog L/R", "3.5oz", "3.7inX3.7inX1.2in", "Black", "802.11", "On Android/Windows", "Good Price Point"],
  [ "Amazon Fire", 26, "jK7SFNx5mug", 14.99, 14.99, 'Amazon', 14.99, "Eqm8r1jXAt8", "https://www.amazon.com/Logitech-Wireless-Mouse-Large-Computer/dp/B003NR57BY/ref=lp_11036491_1_1?s=pc&ie=UTF8&qid=1470870088&sr=1-1", "Walmart", 35.99, "#", "Target", 35.99, "#", "Radio", 35.99, "#", "BestBuy", 35.99, "#", "8/10", "7/10", "8/10", "8/10", "1080p", "Amazon", "No", "Remote/Phone", "HDMI", "HDMI/Analog L/R", "3.5oz", "3.7inX3.7inX1.2in", "Black", "802.11", "On Android/Windows", "Good Price Point"],

]

product_list.each do |product_name, department_id, youtube_id, youtube_thumbnail_id, msrp, expected, first_seller, first_price, first_link, second_seller, second_price, second_link, third_seller, third_price, third_link, fourth_seller, fourth_price, fourth_link, fifth_seller, fifth_price, fifth_link, first_glance, second_glance, third_glance, fourth_glance, fifth_glance, first_feature, second_feature, third_feature, fourth_feature, fifth_feature, first_spec, second_spec, third_spec, fourth_spec, fifth_spec, benefits|
  Product.create( product_name: product_name, department_id: department_id, youtube_id: youtube_id, youtube_thumbnail_id: youtube_thumbnail_id, msrp: msrp, expected: expected, first_seller: first_seller, first_price: first_price, first_link: first_link, second_seller: second_seller, second_price: second_price, second_link: second_link, third_seller: third_seller, third_price: third_price, third_link: third_link, fourth_seller: fourth_seller, fourth_price: fourth_price, fourth_link: fourth_link, fifth_seller: fifth_seller, fifth_price: fifth_price, fifth_link: fifth_link, first_glance: first_glance, second_glance: second_glance, third_glance: third_glance, fourth_glance: fourth_glance, fifth_glance: fifth_glance, first_feature: first_feature, second_feature: second_feature, third_feature: third_feature, fourth_feature: fourth_feature, fifth_feature: fifth_feature, first_spec: first_spec, second_spec: second_spec, third_spec: third_spec, fourth_spec: fourth_spec, fifth_spec: fifth_spec, benefits: benefits)
end