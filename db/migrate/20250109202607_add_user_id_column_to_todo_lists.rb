class AddUserIdColumnToTodoLists < ActiveRecord::Migration[8.0]
  def change
    add_column :todo_lists, :user_id, :bigint
  end
end
