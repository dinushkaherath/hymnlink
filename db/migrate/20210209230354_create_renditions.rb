class CreateRenditions < ActiveRecord::Migration[6.1]
  def change
    create_table :renditions do |t|
      t.string :link
      t.references :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end
