FactoryBot.define do
  factory :user do
    sequence(:email) {|n| "user_#{n}@factory.com" }
    password {"azkoakzoakz"}
    description {"J'aime les gens"}
    first_name {"Jean"}
    last_name {"Louis"}
  end
end