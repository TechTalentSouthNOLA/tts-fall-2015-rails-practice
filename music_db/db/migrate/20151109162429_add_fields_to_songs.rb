class AddFieldsToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :year, :integer
    add_column :songs, :rating, :integer
  end
end
