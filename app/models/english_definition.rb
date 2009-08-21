class EnglishDefinition < ActiveRecord::Base
  belongs_to :chinese, :class_name => "ChineseWord", :foreign_key => :chinese_id
end
