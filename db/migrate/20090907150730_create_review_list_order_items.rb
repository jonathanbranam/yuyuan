class CreateReviewListOrderItems < ActiveRecord::Migration
  def self.up
    create_table :review_list_order_items do |t|
      t.integer :review_list_order_id
      t.integer :word_list_item_id
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :review_list_order_items
  end
end
