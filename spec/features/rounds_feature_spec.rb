require "rails_helper"

RSpec.feature "Rounds", type: :feature do
    context "Update rounds" do
      let(:round) { Round.create(course: "Cottonwood", weather: "sunny", date: "April 24, 2023", hole1: "0", hole2: "0", hole3: "0", hole4: "0", hole5: "0", hole6: "0", hole7: "0", hole8: "0", hole9: "0") }
      before(:each) do
        visit edit_round_path(round)
      end
 
 
      scenario "should be successful" do
        within("form") do
          fill_in "Course", with: "Fountain"
        end
        click_button "Update Round"
        expect(page).to have_content("Round was successfully updated")
      end
 
 
      scenario "should fail" do
        within("form") do
          fill_in "Course", with: ""
        end
        click_button "Update Round"
        expect(page).to have_content("Course can't be blank")

        within("form") do
            fill_in "Weather", with: ""
          end
          click_button "Update Round"
          expect(page).to have_content("Weather can't be blank")

  
      end
    end
end
