require 'rails_helper'

describe 'navigate' do
  describe 'index' do
    it 'can be reached successfully' do
      visit posts_path
      expect(page.status_code).to eq(200)
    end

    it 'has a title of Posts' do
      visit posts_path
      expect(page).to have_content(/Posts/)
   
    end

    it 'has a list of posts' do
      post1=  = Post.create(date: Date.today, rationale: "Post1")
      post2=  = Post.create(date: Date.today, rationale: "Post2")
      visit posts_path
      expect(page).to have_content(/Post1|Post2)
  end
end

Rspec.describe Post, type: :model do
  describe "Creation" do
    it 'can be created' do
      post = Post.create(date: Date.today, rationale: "anything")
      expect(post).to be_valid
    end

    it 'can be created' do
      expect(@post).to be_valid
    end

    it 'cannot be created without a date and rationale' do
      @post.date = nil
      @post.rationale = nil
      expect(@post).to be_valid
    end
  end
end