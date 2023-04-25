require 'rails_helper'

RSpec.describe User, type: :model do
  it 'returns the full name for the user' do
    # BUILD command allows user to be created that is not saved in database
    user = build(:user, email: 'test@test.com', password: 'qwerty')
    expect(user.email).to eq 'test@test.com'
    expect(user.password).to eq 'qwerty'
  end
end
