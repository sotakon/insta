require 'test_helper'

class InstasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get instas_index_url
    assert_response :success
  end

end
