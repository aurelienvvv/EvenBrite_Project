FactoryBot.define do
  factory :attendance do
    stripe_customer_id {12345}
    participant { FactoryBot.create(:user) }
    event { FactoryBot.create(:event) }
  end
end