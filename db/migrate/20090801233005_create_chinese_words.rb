class CreateChineseWords < ActiveRecord::Migration
  def self.up
    create_table :chinese_words do |t|
      t.string :traditional
      t.string :simplified
      t.string :pinyin
      t.string :english1
      t.string :english2
      t.string :english3
      t.string :english4
      t.string :english5
      t.string :english6
      t.string :english7
      t.string :english8
      t.string :english9

      t.timestamps
    end
  end

  def self.down
    drop_table :chinese_words
  end
end
