require 'rails_helper'

RSpec.describe "Welcome Page", type: :feature do
  describe "When I visit '/' I should see" do
    it "A welcome message" do
      visit welcome_index_path

      expect(page).to have_content("Now this is Pod Tracking!")
    end

    it "A button to take me to a page to register as a new user" do
      visit welcome_index_path

      expect(page).to have_button("Register as a new player")
    end

    it "A link to take me back to the Welcome Page" do
      visit welcome_index_path

      expect(page).to have_link("Home")
    end
  end
end