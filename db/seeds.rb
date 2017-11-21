@user = User.create!(email: "test@test.com", password: "swordfish", password_confirmation: "swordfish", first_name: "Jon", last_name: "Snow")

puts "1 User created"

AdminUser.create!(email: "admin@test.com", password: "swordfish", password_confirmation: "swordfish", first_name: "Admin", last_name: "LastNameUSer")


puts "1 User created"
100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 Posts have been created"