class CreateReviewListOrders < ActiveRecord::Migration
  def self.up
    create_table :review_list_orders do |t|
      t.integer :word_list_id

      t.timestamps
    end
  end

  def self.down
    drop_table :review_list_orders
  end
end
