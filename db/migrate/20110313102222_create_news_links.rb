class CreateNewsLinks < ActiveRecord::Migration
  def self.up
    create_table :news_links do |t|
      t.string :title
      t.string :added_by
      t.datetime :added_on
      t.integer :total_parts
      t.string :video_link
      t.string :image_link
      t.integer :active

      t.timestamps
    end
  end

  def self.down
    drop_table :news_links
  end
end
