#Create 50 Users
50.times do
  User.create(name: Faker::Name.name, username: Faker::Lorem.word + rand(1..45).to_s , bio: Faker::Lorem.paragraph,  photo_id: rand(1..25), email: Faker::Internet.free_email, password: Faker::Internet.password )
end

#Create 25 Connections
25.times do
  Connection.create(user_id: rand(1..20), following_id: rand(10..45))
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
  Post.create(user_id: rand(1..45), filter_id: rand(1..10), filter_opacity: rand(0.0..1.0).round(2), photo_id: rand(25..50), description: Faker::Lorem.sentence, location: Faker::Address.city)
end


#Create 25 Photos for users
25.times do
  Photo.create(url: 'https://robohash.org/' + Faker::Lorem.word + '?set=set3')
end

#Create 25 Photos for posts
55.times do
  Photo.create(url: 'https://picsum.photos/600/600')
end
#Create 10 Filters
10.times do
  Filter.create(name: Faker::Lorem.word)
end

Photo.create(url: "https://avatars2.githubusercontent.com/u/12101475?s=400&u=ef6c23f12f4a03a1a9d0992625399f9a1532dc92&v=4")
User.create(name: 'Jason Sutter', username: 'jasonsutter87' , bio: 'Tacos everyday!',  photo_id: 81, email: 'jason@fotogramm.com', password: 'fotogramm' )
Post.create(user_id: 51, filter_id: rand(1..10), filter_opacity: rand(0.0..1.0).round(2), photo_id: 51, description: Faker::Lorem.sentence, location: 'Sacramento, CA')
Post.create(user_id: 51, filter_id: rand(1..10), filter_opacity: rand(0.0..1.0).round(2), photo_id: 52, description: Faker::Lorem.sentence, location: 'Sacramento, CA')
Post.create(user_id: 51, filter_id: rand(1..10), filter_opacity: rand(0.0..1.0).round(2), photo_id: 53, description: Faker::Lorem.sentence, location: 'Sacramento, CA')
Post.create(user_id: 51, filter_id: rand(1..10), filter_opacity: rand(0.0..1.0).round(2), photo_id: 54, description: Faker::Lorem.sentence, location: 'Sacramento, CA')
Post.create(user_id: 51, filter_id: rand(1..10), filter_opacity: rand(0.0..1.0).round(2), photo_id: 55, description: Faker::Lorem.sentence, location: 'Sacramento, CA')
Connection.create(user_id: 51, following_id: 1)
Connection.create(user_id: 51, following_id: 5)
Connection.create(user_id: 51, following_id: 10)
Connection.create(user_id: 1, following_id: 51)
Like.create(user_id: 1, post_id: 51)
Like.create(user_id: 2, post_id: 51)
Like.create(user_id: 2, post_id: 52)
Like.create(user_id: 7, post_id: 53)
