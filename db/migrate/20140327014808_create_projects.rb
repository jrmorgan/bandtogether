class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :owner_id
      t.string :name

      t.timestamps
    end
    add_index :projects, :owner_id
  end
end
