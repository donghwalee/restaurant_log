class ChangeRestTypeToNullTrue < ActiveRecord::Migration
  def change
    change_column :restaurants, :rest_type, :string, null: true
  end
end
