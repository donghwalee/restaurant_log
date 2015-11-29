class AddRatingDinedAtAndCommentsColumnsToRestaurantTable < ActiveRecord::Migration
  def change
    add_column :restaurants, :rating, :integer
    add_column :restaurants, :dined_at, :date
    add_column :restaurants, :comments, :string
  end
end
