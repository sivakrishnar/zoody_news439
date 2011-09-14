class CreateNewsItems < ActiveRecord::Migration
  def self.up
    create_table :news_items do |t|
      t.string :title
      t.timestamp :added_on
      t.text :content
      t.text :added_by
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :news_items
  end
end
