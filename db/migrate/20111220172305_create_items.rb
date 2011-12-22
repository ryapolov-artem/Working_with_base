class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
	t.string "name", :limit => 20
	t.text   "description", :limit => 255
	t.string "owner", :limit => 40
	t.string "holder", :limit => 40
	t.boolean "availability", :default => 1
        t.timestamps
    end
  end

  def self.down
	drop_table :items
  end
end
