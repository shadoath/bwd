class CreateItemsMenuGroups < ActiveRecord::Migration[4.2]
  def change
    create_table :items_menu_groups do |t|
      t.integer :item_id, index: true
      t.integer :menu_group_id, index: true
    end
  end
end
