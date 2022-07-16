require 'faker'

User.destroy_all

10.times do
    User.create(first_name: Faker::Name.unique.name, last_name: Faker::Name.unique.name, username: Faker::Internet.username)
end

10.times do
   Note.create(description: Faker::GreekPhilosophers.quote, user_id: rand(1..10))
end