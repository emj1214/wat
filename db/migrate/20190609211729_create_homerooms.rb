class CreateHomerooms < ActiveRecord::Migration
  def change
    create_table :homerooms do |t|
      t.integer :goal
      t.string :name
      t.string :teacher

      t.timestamps null: false
    end
    add_index :homerooms, :name, unique: true
    add_index :homerooms, :teacher, unique: true
  end
end
