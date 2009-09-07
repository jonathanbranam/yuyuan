class ChineseWord < ActiveRecord::Base
  has_many :english_definition, :foreign_key => :chinese_id
end

