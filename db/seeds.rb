User.destroy_all
Event.destroy_all
Attendance.destroy_all

10.times do
  first = Faker::Name.first_name
  last = Faker::Name.last_name
  User.create( email: "#{first}.#{last}@yopmail.com", password: Faker::Internet.password, description: Faker::StarWars.quote, first_name: first, last_name: last) 
end

puts '10 users créés !'


10.times do
  Event.create(start_date: Faker::Date.forward(7), duration: 3000, title: "#{Faker::HarryPotter.house} Party", description: Faker::HarryPotter.quote, price: rand(5..25), location: Faker::Address.city, admin: User.all.sample)
end

puts '10 events créés !'

10.times do
  Attendance.create(stripe_customer_id: rand(1002..9999), participant: User.all.sample, event: Event.all.sample)
end

puts '10 attendances créés !'