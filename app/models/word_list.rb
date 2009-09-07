class WordList < ActiveRecord::Base
  has_many :word_list_item
end
