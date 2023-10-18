require 'rails_helper'

RSpec.describe "Register Player Page", type: :feature do
  describe "When I visit the player registration page" do
    it "I should see a form to add my name and username" do
      visit "/players/new"

      expect(page).to have_content("Please register as a player with your name and a unique username")
      expect(page).to have_field :name
      expect(page).to have_field :username
      expect(page).to have_button "Submit"
    end

    it "When I fill out the form and click 'Submit', I should be taken to the user's show page" do
      visit "/players/new"

      fill_in :name, with: "Gargos"
      fill_in :username, with: "The Vicious Watcher"
      click_on "Submit"

      expect(page).to have_content("Gargos's Page")
    end
  end
end