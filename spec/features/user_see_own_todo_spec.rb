require 'rails_helper'

feature 'user see own todo' do
  scenario 'does not see other todos' do
    Todo.create!(title: 'Go running', email: 'run@a.com')
    sign_in_as 'cat@a.com'

    click_on 'Add a new todo'
    fill_in 'Title', with: 'Read a Book'
    click_on 'Submit'

    expect(page).to display_todo 'Read a Book'
  end
end
