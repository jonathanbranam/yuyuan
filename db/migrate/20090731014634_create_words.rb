class CreateWords < ActiveRecord::Migration
  def self.up
    create_table :words do |t|
      t.string :language
      t.string :main_script
      t.string :secondary_script
      t.string :romanization

      t.timestamps
    end
  end

  def self.down
    drop_table :words
  end
end
