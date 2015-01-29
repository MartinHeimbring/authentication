FactoryGirl.define do
  factory :user do
    name "John Doe"
    sequence :email do |n|
      "foo#{n}@bar.de"
    end
    password "password"
    password_confirmation "password"
  end
end