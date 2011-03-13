require 'test_helper'

class NewsLinksControllerTest < ActionController::TestCase
  setup do
    @news_link = news_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news_link" do
    assert_difference('NewsLink.count') do
      post :create, :news_link => @news_link.attributes
    end

    assert_redirected_to news_link_path(assigns(:news_link))
  end

  test "should show news_link" do
    get :show, :id => @news_link.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @news_link.to_param
    assert_response :success
  end

  test "should update news_link" do
    put :update, :id => @news_link.to_param, :news_link => @news_link.attributes
    assert_redirected_to news_link_path(assigns(:news_link))
  end

  test "should destroy news_link" do
    assert_difference('NewsLink.count', -1) do
      delete :destroy, :id => @news_link.to_param
    end

    assert_redirected_to news_links_path
  end
end
