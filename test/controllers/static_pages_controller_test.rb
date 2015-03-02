require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  def setup
    @title_string = "Ruby on Rails Tutorial Sample App"
  end
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "#{@title_string}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@title_string}"
  end

  test "should get about" do 
    get :about
    assert_response :success
    assert_select "title", "About | #{@title_string}"
  end

  test "should get contacts" do
    get :contacts
    assert_response :success
    assert_select "title", "Contacts | #{@title_string}"
  end
end
