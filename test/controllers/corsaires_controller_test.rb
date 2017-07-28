require 'test_helper'

class CorsairesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get corsaires_new_url
    assert_response :success
  end

  test "should get show" do
    get corsaires_show_url
    assert_response :success
  end

  test "should get edit" do
    get corsaires_edit_url
    assert_response :success
  end

  test "should get index" do
    get corsaires_index_url
    assert_response :success
  end

end
