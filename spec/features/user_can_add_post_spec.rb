require 'rails_helper'

RSpec.feature "user can add a post" do

  context "valid body and title submitted" do
    scenario "sees post appear on index page" do

      visit "/"

      click_on "Add New Post"

      fill_in "Title", with: "Amazing Post"
      fill_in "Body", with: "Life is beautiful."
      fill_in "Author", with: "Deb"
      click_on "Create Post"

      expect(page).to have_content("Amazing Post")
    end
  end
end
