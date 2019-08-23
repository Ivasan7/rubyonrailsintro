class RenameToDoListToToDoLists < ActiveRecord::Migration
  def change
    rename_table :todo_list,:todo_lists
  end
end
