class CreateBookRecords < ActiveRecord::Migration
  def change
    create_table :book_records do |t|
      t.integer :client_id
      t.integer :user_id
      t.integer :project_id
      t.string :department_id
      t.float :price

      t.timestamps
    end
  end
end
