require 'rails_helper'

feature 'user completed todo' do
  scenario 'successfully' do
    sign_in

    click_on 'Add a new todo'
    fill_in 'Title', with: 'Read a Book'
    click_on 'Submit'

    click_on 'Mark completed'

    expect(page).to have_css '.todos li.completed', text: 'Read a Book'
  end
end
