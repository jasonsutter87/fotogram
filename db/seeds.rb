#Create 50 Users
50.times do
  User.create(name: Faker::Name.name, username: Faker::Lorem.word + rand(1..45).to_s , bio: Faker::Lorem.paragraph,  photo_id: rand(1..25), email: Faker::Internet.free_email, password: Faker::Internet.password )
end

#Create 25 Connections
25.times do
  Connection.create(user_id: rand(1..20), follower_id: rand(10..45))
end

#Create 50 Reports
50.times do
  Report.create(user_id: rand(1..20), post_id: rand(10..45), reason: Faker::Lorem.sentence)
end

#Create 50 Likes
50.times do
  Like.create(user_id: rand(1..20), post_id: rand(10..45))
end


#Create 50 Comments
50.times do
  Comment.create(user_id: rand(1..20), post_id: rand(10..45), comment: Faker::Lorem.sentence)
end

#Create 50 Posts
50.times do
  Post.create(filter_id: rand(1..10), filter_opacity: rand(0.0..1.0).round(2), photo_id: rand(1..25), description: Faker::Lorem.sentence, location: Faker::Address.city)
end


#Create 25 Posts
25.times do
  Photo.create(url: 'https://robohash.org/' + Faker::Lorem.word + '?set=set3')
end
#Create 10 Filters
10.times do
  Filter.create(name: Faker::Lorem.word)
end
