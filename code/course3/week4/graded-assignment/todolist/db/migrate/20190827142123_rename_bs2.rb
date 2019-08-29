class RenameBs2 < ActiveRecord::Migration
  def change
    rename_column :todo_items, :todolist_id, :todo_list_id
  end
end
