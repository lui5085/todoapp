class CreateItems < ActiveRecord::Migration[8.0]
  def change
    create_table :items do |t|
      t.string :title
      t.boolean :conclued
      t.references :todo_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
