class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :name
      t.date :sign_date
      t.integer :added_by_id
      t.string :code
      t.text :desc

      t.timestamps
    end
  end
end
