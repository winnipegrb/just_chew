class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.timestamps null: false
      t.string :name,    null: false
      t.string :address, null: false
      t.string :logo
    end
  end
end
