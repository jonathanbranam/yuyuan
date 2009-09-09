class WordList < ActiveRecord::Base
  has_many :word_list_items
end
