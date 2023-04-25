require "rails_helper"

describe "Round Attribute Requirements on Create", :type => :model do
  before(:each) do
    user = FactoryBot.create(:user)
    login_as(user)
    visit new_project_path
  end
  context "validation tests" do
    it "ensures the course is present when creating round" do
      round = Round.new(weather: "sunny", date: "April 24, 2023", hole1: "0", hole2: "0", hole3: "0", hole4: "0", hole5: "0", hole6: "0", hole7: "0", hole8: "0", hole9: "0")
      expect(round.valid?).to eq(false)
    end
    it "should not be able to save round when score is missing" do
      round = Round.new(course: "Cottonwood", weather: "sunny", date: "April 24, 2023", hole1: "0", hole2: "0", hole3: "0", hole4: "0", hole5: "0", hole6: "0", hole7: "0", hole8: "0")
      expect(round.save).to eq(false)
    end
    it "should be able to save round when " do
      round = Round.new(course: "Cottonwood", weather: "sunny", date: "April 24, 2023", hole1: "0", hole2: "0", hole3: "0", hole4: "0", hole5: "0", hole6: "0", hole7: "0", hole8: "0", hole9: "0")
      expect(round.save).to eq(true)
    end
  end
end

describe "Round Attribute Requirements on Edit", :type => :model do
  context "Edit round" do  
    before (:each) do
      @round = Round.create(course: "Cottonwood", weather: "sunny", date: "April 24, 2023", hole1: "0", hole2: "0", hole3: "0", hole4: "0", hole5: "0", hole6: "0", hole7: "0", hole8: "0", hole9: "0")
      user = FactoryBot.create(:user)
      login_as(user)
      visit new_project_path
      end
    it "ensures the course is present when editing round" do
      @round.update(:course => "New Course")
      expect(@round.course == "New Course")
    end
    it "ensures the weather is present when editing round" do
        @round.update(:weather => "")
        expect(@round.save).to eq(false)
  end
end
end
