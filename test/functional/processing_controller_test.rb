require 'test_helper'

class ProcessingControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get make_record" do
    get :make_record
    assert_response :success
  end

  test "should get extract_record" do
    get :extract_record
    assert_response :success
  end

  test "should get show_page" do
    get :show_page
    assert_response :success
  end

end
