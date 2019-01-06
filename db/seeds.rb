15.times do 
  user = User.new(
    name: Faker::DragonBall.character,
    last_name: Faker::Name.last_name ,
    email: Faker::Internet.email,
    password: "password",
    password_confirmation: "password",
    image: Faker::Avatar.image,
  )
  user.save!

  5.times do
    post = user.posts.new(
      name: user.name,
      last_name: user.last_name,
      body: Faker::Simpsons.quote,
    )
    post.save!
  end
end

puts "15 users created!"