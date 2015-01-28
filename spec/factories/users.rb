FactoryGirl.define do
  factory :user do |f|
    f.name "John Doe"
    f.email "john@doe.com"
    f.password "password"
    f.password_confirmation "password"
  end
end