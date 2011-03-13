class RemoveTotalPartsFromNewsLinks < ActiveRecord::Migration
  def self.up
    remove_column :news_links, :total_parts, :default => 1
    change_column :news_links, :added_on, :date
    change_column :news_links, :active, :integer, :default => 0, :null => false
  end

  def self.down
    add_column :news_links, :total_parts, :string
    change_column :news_links, :added_on, :datetime
    raise ActiveRecord::IrreversibleMigration
  end
end
