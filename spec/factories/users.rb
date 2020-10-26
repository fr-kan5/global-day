FactoryBot.define do
  factory :user do
    name {"MIKE"}
    email {Faker::Internet.free_email}
    password {"a12345"}
    password_confirmation {password}
    country_id {2}
    birthday {"1932-03-04"}
    profile {Faker::Lorem.sentence}

  end
end
