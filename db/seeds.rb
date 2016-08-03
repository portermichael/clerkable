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
  [ "TV & Video", "5", "PUBnqS1qcvk", "lPwlfbeQOBg"],
  [ "Home Audio & Theatre", "5", "lN-rVlMIJZs", "lPwlfbeQOBg"],
  [ "Camera, Photo and Audio", "5", "BzmFbfCEv9k", "lPwlfbeQOBg"],
  [ "Cell Phone and Accessories", "5", "PUBnqS1qcvk", "lPwlfbeQOBg"],
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