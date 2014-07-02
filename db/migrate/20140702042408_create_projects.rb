class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :address
      t.string :code
      t.integer :created_by
      t.string :desc
      t.string :builder
      t.string :wuye
      t.string :jianli
      t.datetime :build_begin_at
      t.datetime :build_end_at
      t.text :desc

      t.timestamps
    end
  end
end
