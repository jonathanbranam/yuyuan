require 'test_helper'
require 'word'

class WordTest < ActiveSupport::TestCase
  test "that word requires main_script and language" do
    word = Word.new
    assert !word.save, "Saved word without main_script and language"
  end

  test "that word requires main_script" do
    word = Word.new
    word.language = "en"
    assert !word.save, "Saved word without main_script"
  end

  test "that word requires language" do
    word = Word.new
    word.main_script = "hi"
    assert !word.save, "Saved word without language"
  end

  test "that word save with only main_script and language" do
    word = Word.new
    word.main_script = "hi"
    word.language = "en"
    assert word.save, "Failed to save word with main_script and language."
  end
end
