require 'faker'

# Categories
cats = ["Apartments", "Jobs", "Cars", "Personals"]

cats.each do |cat|
  Category.create(name: cat)
end

# Users
10.times do
  User.create(name: Faker::Internet.user_name,
              email: Faker::Internet.email,
              password: "password")
end

User.create(name: "username", email: "user@me.com", password: "password")

# Posts
Category.all.each do |cat|
  3.times do
    cat.posts.create(name: Faker::Company.catch_phrase,
                     user_id: (1..10).to_a.sample,
                     content: Faker::Lorem.paragraph(4))
  end
end
