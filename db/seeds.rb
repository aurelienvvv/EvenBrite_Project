User.destroy_all
Event.destroy_all
Attendance.destroy_all

10.times do
  first = Faker::Name.first_name
  last = Faker::Name.last_name
  User.create( email: "#{first}.#{last}@yopmail.com", encrypted_password: Faker::Internet.password, description: Faker::StarWars.quote, first_name: first, last_name: last) 
end

puts '10 users créés !'


10.times do
  Event.create(start_date: "2020-02-03 00:00:00", duration: 3000, title: "#{Faker::HarryPotter.house} Party", description: Faker::HarryPotter.quote, price: rand(5..25), location: Faker::Address.city, admin_id: User.all.sample.id)
end

puts '10 events créés !'

10.times do
  Attendance.create(stripe_customer_id: User.all.sample.id, participant_id: User.all.sample.id, event_id: Event.all.sample.id)
end

puts '10 attendances créés !'