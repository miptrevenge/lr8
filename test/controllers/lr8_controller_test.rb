require "test_helper"

class Lr8ControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get lr8_input_url
    assert_response :success
  end

  test "should get view" do
    get lr8_view_url
    assert_response :success
  end
end
