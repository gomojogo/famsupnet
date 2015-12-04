require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get staff" do
    get :staff
    assert_response :success
  end

  test "should get contact_us" do
    get :contact_us
    assert_response :success
  end

  test "should get resource_library" do
    get :resource_library
    assert_response :success
  end

  test "should get family_support_standards" do
    get :family_support_standards
    assert_response :success
  end

  test "should get policy_and_planning" do
    get :policy_and_planning
    assert_response :success
  end

  test "should get committees" do
    get :committees
    assert_response :success
  end

end
