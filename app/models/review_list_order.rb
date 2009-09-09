class ReviewListOrder < ActiveRecord::Base
  has_many :review_list_order_items
  belongs_to :word_list
end
