require 'test_helper'

class WinesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wines)
  end

  test "should get show" do
    get :show, id: wines(:kris).id
    assert_response :success
    assert_not_nil assigns(:wine)
  end
end