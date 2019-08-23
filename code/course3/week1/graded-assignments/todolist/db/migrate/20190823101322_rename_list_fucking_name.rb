class RenameListFuckingName < ActiveRecord::Migration
  def change
     rename_column :todo_lists, :list_dute_date, :list_due_date
  end
end
