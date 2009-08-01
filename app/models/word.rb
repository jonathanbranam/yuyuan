class Word < ActiveRecord::Base
  validates_presence_of :main_script
  validates_presence_of :language
  has_many :translations
end
