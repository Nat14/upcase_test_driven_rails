require 'rails_helper'

feature 'user mark todo incompleted' do
  scenario 'successfully' do
    sign_in

    create_todo 'Read a Book'

    click_on 'Mark completed'
    click_on 'Mark incompleted'

    expect(page).not_to display_complete_todo 'Read a Book'
    expect(page).to display_todo 'Read a Book'
  end
end
