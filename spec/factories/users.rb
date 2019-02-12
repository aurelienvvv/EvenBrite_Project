FactoryBot.define do
  factory :user do
    email {"a@gmail.com"}
    encrypted_password {"azkoakzoakz"}
    description {"J'aime les gens"}
    first_name {"Jean"}
    last_name {"Louis"}
  end
end