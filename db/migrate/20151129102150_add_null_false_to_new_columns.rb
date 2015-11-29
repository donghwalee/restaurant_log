class AddNullFalseToNewColumns < ActiveRecord::Migration
  def change
    change_column :restaurants, :rating, :integer, null: false
    change_column :restaurants, :dined_at, :date, null: false
    change_column :restaurants, :comments, :string, null: false
  end
end
