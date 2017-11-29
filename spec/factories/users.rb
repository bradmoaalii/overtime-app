FactoryBot.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    first_name 'Jon'
    last_name 'Snow'
    email { generate :email}
    password "asdfasdf"
    password_confirmation "asdfasdf"
    phone "5555555555"
  end

    factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name  'User'
    email { generate :email}
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
    phone "5555555555"
  end

    factory :non_authorized_user, class: "User" do
    first_name 'Mon'
    last_name  'Authorized'
    email { generate :email}
    password 'swordfish'
    password_confirmation 'swordfish'
    phone "5555555555"
  end
end

  User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow")
