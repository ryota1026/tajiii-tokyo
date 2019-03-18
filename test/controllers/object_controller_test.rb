require 'test_helper'

class ObjectControllerTest < ActionDispatch::IntegrationTest
  test "should get import" do
    get object_import_url
    assert_response :success
  end

end
