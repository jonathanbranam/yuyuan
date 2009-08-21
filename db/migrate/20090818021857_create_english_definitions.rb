class CreateEnglishDefinitions < ActiveRecord::Migration
  def self.up
    create_table :english_definitions do |t|
      t.string :definition
      t.integer :chinese_id

      t.timestamps
    end
  end

  def self.down
    drop_table :english_definitions
  end
end
