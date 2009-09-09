class ReviewListOrderItem < ActiveRecord::Base
  belongs_to :review_list_order
  belongs_to :word_list_item
end
