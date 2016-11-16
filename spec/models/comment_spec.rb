require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:body) }

  it "should check if body valid" do
    comment = Comment.new(name: "Deb", body: "")
    expect(comment.valid?).to be false
  end

end
