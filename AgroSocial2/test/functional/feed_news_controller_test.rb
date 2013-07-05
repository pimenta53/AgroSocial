require 'test_helper'

class FeedNewsControllerTest < ActionController::TestCase
  setup do
    @feed_news = feed_news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feed_news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feed_news" do
    assert_difference('FeedNew.count') do
      post :create, feed_news: { name: @feed_news.name, url: @feed_news.url }
    end

    assert_redirected_to feed_news_path(assigns(:feed_news))
  end

  test "should show feed_news" do
    get :show, id: @feed_news
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feed_news
    assert_response :success
  end

  test "should update feed_news" do
    put :update, id: @feed_news, feed_news: { name: @feed_news.name, url: @feed_news.url }
    assert_redirected_to feed_news_path(assigns(:feed_news))
  end

  test "should destroy feed_news" do
    assert_difference('FeedNew.count', -1) do
      delete :destroy, id: @feed_news
    end

    assert_redirected_to feed_news_path
  end
end
