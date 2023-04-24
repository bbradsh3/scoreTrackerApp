require "rails_helper"

RSpec.describe RoundsController, :type => :controller do


    login_user

    describe "test web requests" do
        context "GET #index" do
            it "returns a success response" do
            get :index
            expect(response).to have_http_status(:ok)
            end
        end

        context "GET #show" do
            let!(:round) { Round.create(course: "Cottonwood", weather: "sunny", date: "April 24, 2023", hole1: "0", hole2: "0", hole3: "0", hole4: "0", hole5: "0", hole6: "0", hole7: "0", hole8: "0", hole9: "0") }
            it "returns a success response" do
                expect(response).to have_http_status(:ok)
            end
        end
    end

    # This should return the minimal set of attributes required to create a valid
    # Article. As you add validations to Article, be sure to adjust the attributes here as well.
    let(:valid_attributes) {
        { :course => "Cottonwood", :weather => "sunny", :date => "April 24, 2023", :hole1 => "0", :hole2 => "0", :hole3 => "0", :hole4 => "0", :hole5 => "0", :hole6 => "0", :hole7 => "0", :hole8 => "0", :hole9 => "0" }
    }

    let(:valid_session) { {} }

    describe "GET #index" do
        it "returns a success response" do
            Round.create! valid_attributes
            get :index, params: {}, session: valid_session
             expect(response).to be_successful # be_successful expects a HTTP Status code of 200
            # expect(response).to have_http_status(302) # Expects a HTTP Status code of 302
        end
    end
end
