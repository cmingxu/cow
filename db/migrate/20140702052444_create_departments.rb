class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.float :size
      t.string :chaoxiang
      t.integer :client_id
      t.integer :project_id
      t.integer :created_by

      t.timestamps
    end
  end
end
