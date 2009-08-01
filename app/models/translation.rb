class Translation < ActiveRecord::Base
  belongs_to :word_a, :class_name => "Word", :foreign_key => :word_a_id
  belongs_to :word_b, :class_name => "Word", :foreign_key => :word_b_id
end
