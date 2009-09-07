class CreateWordListItems < ActiveRecord::Migration
  def self.up
    create_table :word_list_items do |t|
      t.integer :chinese_word_id
      t.integer :word_list_id

      t.timestamps
    end
  end

  def self.down
    drop_table :word_list_items
  end
end
