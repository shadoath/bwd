class CreateExtras < ActiveRecord::Migration[4.2]
  def change
    create_table :extras do |t|
      t.integer :restaurant_id
      t.integer :addon_type
      t.string  :name
      t.string  :description
      t.timestamps
    end
  end
end