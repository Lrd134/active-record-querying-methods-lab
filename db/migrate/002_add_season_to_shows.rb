class AddSeasonToShows < ActiveRecord::Migration[5.2]
  def up
    add_column :shows, :season, :string
  end
  def down
    remove_column :shows, :season
  end
end
