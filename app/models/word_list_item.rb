class WordListItem < ActiveRecord::Base
  belongs_to :word_list
  belongs_to :chinese_word
end
