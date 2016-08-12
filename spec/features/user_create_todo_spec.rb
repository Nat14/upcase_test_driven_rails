require 'rails_helper'

feature 'user creates todo' do
  scenario 'successfully' do
    sign_in

    create_to 'Read a Book'

    expect(page).to display_todo 'Read a Book'
  end
end
