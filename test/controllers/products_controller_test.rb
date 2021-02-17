require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get exit" do
    get products_exit_url
    assert_response :success
  end

  test "should get scanner" do
    get products_scanner_url
    assert_response :success
  end

end
