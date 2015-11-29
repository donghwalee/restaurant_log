class ChangeCommentToAllowNull < ActiveRecord::Migration
  def change
    change_column :restaurants, :comments, :string, null: true
  end
end
