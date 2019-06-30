require 'test_helper'

class ChecksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get checks_index_url
    assert_response :success
  end

  test "should get second" do
    get checks_second_url
    assert_response :success
  end

end
