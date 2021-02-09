class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :alt_title
      t.integer :hymn_num

      t.timestamps
    end
  end
end
