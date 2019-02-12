FactoryBot.define do
  factory :attendance do
    stripe_customer_id {12345}
    participant_id { FactoryBot.create(:user) }
    event_id { FactoryBot.create(:event) }
  end
end