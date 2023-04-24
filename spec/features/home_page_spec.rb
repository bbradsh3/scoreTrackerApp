RSpec.feature "HomePages", type: :feature do
    scenario "The visitor should see rounds" do
      visit root_path
      expect(page).to have_text("Rounds")
    end
  end
  