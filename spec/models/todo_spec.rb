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

  describe '#complete!' do
    it 'updated completed_at' do
      todo = Todo.create!(completed_at: nil)

      todo.complete!

      todo.reload

      expect(todo).to be_completed
    end
  end

  describe '#mark_incomplete!' do
    it 'updated completed_at to nil' do
      todo = Todo.create!(completed_at: Time.current)

      todo.mark_incomplete!

      todo.reload

      expect(todo).not_to be_completed
    end
  end
end
