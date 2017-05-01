class CreateOrderPreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :order_preferences do |t|
      t.timestamps
      t.references :user,     null: false, index: true
      t.integer    :type,     null: false, default: 0
      t.datetime   :place_at, null: false
    end
  end
end
