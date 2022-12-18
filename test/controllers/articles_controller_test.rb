require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get 'http://localhost:3000/articles/new'
    assert_response :success
  end

  test "should get view" do
    get 'http://localhost:3000/articles'
    assert_response :success
  end

  test "should route to post" do
    assert_routing '/articles/27',
    { :controller => "articles", :action => "show", :id => "27" }
  end

  test "should get " do
    get :show, {title: 10}
    # assert_equal assigns[:article], 11
    end
end
