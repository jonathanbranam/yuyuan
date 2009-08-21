class CreateChineseWords < ActiveRecord::Migration
  def self.up
    create_table :chinese_words do |t|
      t.string :traditional
      t.string :simplified
      t.string :pinyin

      t.timestamps
    end
  end

  def self.down
    drop_table :chinese_words
  end
end
