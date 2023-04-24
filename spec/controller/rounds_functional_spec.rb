require "rails_helper"

RSpec.describe RoundsController, :type => :controller do
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
end
