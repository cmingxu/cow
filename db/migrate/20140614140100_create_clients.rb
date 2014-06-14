class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :contact_person
      t.string :contact_tel

      t.timestamps
    end
  end
end
