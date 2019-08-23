class RenameListDuteDateToListDueDate < ActiveRecord::Migration
  def change
    rename_table :todo_lists,:todo_list
    rename_column :todo_list, :list_name, :list_due_date
  end
end