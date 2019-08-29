class AddTodoListIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :todo_list_id, :integer
  end
end
