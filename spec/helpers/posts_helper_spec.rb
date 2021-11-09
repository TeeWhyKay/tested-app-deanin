require 'rails_helper'
include PostsHelper
# Specs in this file have access to a helper object that includes
# the PostsHelper. For example:
#
# describe PostsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe PostsHelper, type: :helper do
  it 'assigns a creator when creating post' do
    creator = User.first_or_create(email: 'test@test.com', password: '123123', password_confirmation: '123123')
    @post = Post.new(title: 'MyString', body: 'Valid Body')

    returned_post = assign_post_creator(@post, creator)

    expect(returned_post.user).to be(creator)
  end
end
