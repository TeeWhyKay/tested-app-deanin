require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  current_user = User.first_or_create!(email: 'test@test.com', password: '123123', password_confirmation: '123123')
  before(:each) do
    @post = assign(:post, Post.create!(
      title: "Title",
      body: "MyText",
      user: current_user,
      views: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
