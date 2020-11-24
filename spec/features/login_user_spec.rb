require 'rails_helper'

RSpec.describe 'Authenticate user', type: :feature do
  scenario 'Login user' do
    visit 'users/new'

    fill_in 'user[name]', with: 'testUser5'
    fill_in 'user[username]', with: 'user5user'
    click_button 'Submit'
    User.create(name: 'testUser4', username: 'user5user')
    visit '/'
    expect(page).to have_content 'testUser5'
  end
end
