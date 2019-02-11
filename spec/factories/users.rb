FactoryBot.define do
  factory :user do
    email {"a@gmail.com"}
    encrypted_password {"azkoakzoakz"}
    description {"J'aime les gens"}
    first_name {"Jean"}
    last_name {"Louis"}
    admin_id {1}
    participant_id {1}
  end
end