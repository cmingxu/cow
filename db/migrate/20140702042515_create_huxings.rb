class CreateHuxings < ActiveRecord::Migration
  def change
    create_table :huxings do |t|
      t.string :name
      t.integer :client_id
      t.integer :created_by
      t.text :desc

      t.timestamps
    end
  end
end
