class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :visit_type
      t.integer :user_id
      t.text :desc

      t.timestamps
    end
  end
end
