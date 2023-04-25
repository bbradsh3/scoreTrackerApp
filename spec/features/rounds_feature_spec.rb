require "rails_helper"

RSpec.feature "Rounds", type: :feature do
    

    context "Login" do
        scenario "should sign up" do
          visit root_path
          click_link 'Sign up'
          within("form") do
            fill_in "Email", with: "testing@test.com"
            fill_in "Password", with: "123456"
            fill_in "Password confirmation", with: "123456"
            click_button "Sign up"
          end
          expect(page).to have_content("Welcome! You have signed up successfully.")
        end

        scenario "should log in" do
          user = FactoryBot.create(:user)
          login_as(user)
          visit root_path
          expect(page).to have_content("Logged in")
        end
    end

    context "Update rounds" do
      let(:round) { Round.create(course: "Cottonwood", weather: "sunny", date: "April 24, 2023", hole1: "0", hole2: "0", hole3: "0", hole4: "0", hole5: "0", hole6: "0", hole7: "0", hole8: "0", hole9: "0") }
      before(:each) do
        user = FactoryBot.create(:user)
        login_as(user)
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
