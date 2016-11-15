require 'rails_helper'

RSpec.feature "user can add a post" do

  context "valid body and title submitted" do
    scenario "sees post appear on index page" do

      visit "/"

      fill_in "Title", with: "Amazing Post"
      fill_in "Body", with: "Life is beautiful."
      fill_in "Author", with: "Deb"
      click_on "Add new post"

      expect(page).to have_content("Amazing Post")
      expect(page).to have_content("Life is beautiful.")
    end
  end
end
