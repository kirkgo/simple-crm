require 'test_helper'

class AccountsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get accounts_new_url
    assert_response :success
  end

end
