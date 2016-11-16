require 'rails_helper'

RSpec.describe Post, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:body) }
  it { should validate_presence_of(:author) }

  it "should check if body valid" do
    post = Post.new(title: "Love", body: "", author: "Deb")
    expect(post.valid?).to be false
  end

end
