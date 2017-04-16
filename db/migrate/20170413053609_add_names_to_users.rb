class AddNamesToUsers < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name,  null: false
    end
  end
end
