require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get main_index_url
    assert_response :success
  end

  test "should get contact_info" do
    get main_contact_info_url
    assert_response :success
  end

end
