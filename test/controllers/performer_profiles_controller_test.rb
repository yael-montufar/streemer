require 'test_helper'

class PerformerProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get performer_profiles_new_url
    assert_response :success
  end

  test "should get create" do
    get performer_profiles_create_url
    assert_response :success
  end

end
