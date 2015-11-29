class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name, null: false
      t.string :type, null: false
      t.string :address, null: false

      t.timestamps null: false
    end

    add_index :restaurants, :type
  end
end
