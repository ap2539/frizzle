require 'test_helper'

class ClassControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get class_show_url
    assert_response :success
  end

end
