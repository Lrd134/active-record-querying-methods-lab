class CreateShows < ActiveRecord::Migration[5.1]
    def up
        create_table :shows do |t|
            t.string :name
            t.string :day
            t.string :network
            t.integer :rating
        end
    end
    def down
        drop_table :shows
    end
end