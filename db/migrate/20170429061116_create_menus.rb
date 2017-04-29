class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.timestamps
      t.references :restaurant, null: false, index: true
    end
  end
end
