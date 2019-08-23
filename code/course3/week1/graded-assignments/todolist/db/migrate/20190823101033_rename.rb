class Rename < ActiveRecord::Migration
  def change
    rename_column :todo_lists, :list_due_date, :list_name
  end
end
