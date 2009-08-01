require 'test_helper'

class ChineseWordsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chinese_words)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chinese_word" do
    assert_difference('ChineseWord.count') do
      post :create, :chinese_word => { }
    end

    assert_redirected_to chinese_word_path(assigns(:chinese_word))
  end

  test "should show chinese_word" do
    get :show, :id => chinese_words(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => chinese_words(:one).to_param
    assert_response :success
  end

  test "should update chinese_word" do
    put :update, :id => chinese_words(:one).to_param, :chinese_word => { }
    assert_redirected_to chinese_word_path(assigns(:chinese_word))
  end

  test "should destroy chinese_word" do
    assert_difference('ChineseWord.count', -1) do
      delete :destroy, :id => chinese_words(:one).to_param
    end

    assert_redirected_to chinese_words_path
  end
end
