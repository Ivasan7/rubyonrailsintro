class TodoItem < ActiveRecord::Base

    def self.number_of_todos_completed
        self.all.where(completed: true).count
    end
end
