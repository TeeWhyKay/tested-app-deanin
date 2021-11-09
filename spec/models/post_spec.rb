require 'rails_helper'

RSpec.describe Post, type: :model do
  current_user = User.first_or_create!(email: 'test@test.com', password: '123123', password_confirmation: '123123')

  it 'has a title' do
    post = Post.new(title: '', body: 'valid body', user: current_user, views: 0)
    expect(post).to_not be_valid
    post.title = 'Has a title'
    expect(post).to be_valid
  end

  it 'has a title at least 2 characters long' do
    post = Post.new(title: '1', body: 'valid body', user: current_user, views: 0)
    expect(post).to_not be_valid
    post.title = '12'
    expect(post).to be_valid
  end

  it 'has a body' do

  end


  it 'has a body between 5 and 100 characters' do

  end

  it 'has numerical views' do

  end
end
