require 'test_helper'

class FeedsnetsControllerTest < ActionController::TestCase
  setup do
    @feedsnet = feedsnets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feedsnets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feedsnet" do
    assert_difference('Feedsnet.count') do
      post :create, feedsnet: { url: @feedsnet.url }
    end

    assert_redirected_to feedsnet_path(assigns(:feedsnet))
  end

  test "should show feedsnet" do
    get :show, id: @feedsnet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feedsnet
    assert_response :success
  end

  test "should update feedsnet" do
    put :update, id: @feedsnet, feedsnet: { url: @feedsnet.url }
    assert_redirected_to feedsnet_path(assigns(:feedsnet))
  end

  test "should destroy feedsnet" do
    assert_difference('Feedsnet.count', -1) do
      delete :destroy, id: @feedsnet
    end

    assert_redirected_to feedsnets_path
  end
end
