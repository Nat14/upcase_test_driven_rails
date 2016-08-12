module Features
  def create_to(todo_title)
    click_on 'Add a new todo'
    fill_in 'Title', with: todo_title
    click_on 'Submit'
  end

  def display_todo(todo_title)
    have_css '.todos li', text: todo_title
  end

  def display_complete_todo(todo_title)
    have_css '.todos li.completed', text: todo_title
  end
end