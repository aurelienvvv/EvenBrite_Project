FactoryBot.define do
  factory :event do
    start_date { "2019-06-03 21:00:00" }
    duration { 50 0}
    title { "Soirée Départ" }
    description { "Soirée pour le départ de mimi" }
    price { 15 }
    location { "Paris" }
    admin_id { FactoryBot.create(:user) }
  end
end