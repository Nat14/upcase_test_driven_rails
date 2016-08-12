require 'rails_helper'

feature 'user completed todo' do
  scenario 'successfully' do
    sign_in

    create_to 'Read a Book'

    click_on 'Mark completed'

    expect(page).to display_complete_todo 'Read a Book'
  end
end
