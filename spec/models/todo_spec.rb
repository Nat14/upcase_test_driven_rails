require 'rails_helper'

describe Todo do
  describe '#completed?' do
    it 'returned true if completed_at is set' do
      todo = Todo.new(completed_at: Time.current)

      expect(todo).to be_completed
    end

    it 'returned false if completed_at is not set' do
      todo = Todo.new(completed_at: nil)

      expect(todo).not_to be_completed
    end
  end
end
