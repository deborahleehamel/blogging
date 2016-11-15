require "rails_helper"

RSpec.feature "User can publish post", js: true do
  context "post is created" do
    scenario "publishes unpublished post" do

      visit "/"

      click_on "Add New Post"

      fill_in "Title", with: "Amazing Post"
      fill_in "Body", with: "Life is beautiful."
      fill_in "Author", with: "Deb"
      click_on "Create Post"

      expect(current_path).to eq('/')

      click_on "Review unpublished posts"

      click_on "Amazing Post"

      click_on "Publish this post"
      





    end
  end



end
