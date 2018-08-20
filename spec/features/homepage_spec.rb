require 'rails_helper'

describe 'homepage' do 
	it 'allows the admin to approve posts from the homepage' do
		post = factoryBot.create(:post)
		admin_user = factoryBot.create(:admin_user)
		login_as(admin_user, :scope => :user)

		visit root_path

		click_on("approve_#{post.id}")

		expect(post.reload.status).to eq('approved')
		
	end
end