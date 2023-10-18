require 'rails_helper'

RSpec.describe "Player Show Page", type: :feature do
  before :each do
    @gargos = Player.create(name: "Gargos", username: "The Vicious Watcher")

    visit "/players/#{@gargos.id}"
  end

  describe "When I visit a specific player's page" do
    it "I should see a compilation of their statistics" do
      expect(page).to have_content("Username: #{@gargos.username}")
      expect(page).to have_content("Total Games Played:") 
      expect(page).to have_content("Total Wins:")
      expect(page).to have_content("Decks:")
      expect(page).to have_content("Pod's Joined:")

      # add more robust testing once the other models are created
    end

    it "I should see a button 'Add a Deck' to create a new deck, when clicked takes me to the deck creation page" do
      expect(page).to have_button("Add a Deck")
      click_button "Add a Deck"

      expect(current_path).to eq "/players/#{@gargos.id}/decks/new"
    end


  end
end
