require 'test_helper'

class RayshiftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rayshift = rayshifts(:one)
  end

  test "should get index" do
    get rayshifts_url
    assert_response :success
  end

  test "should get new" do
    get new_rayshift_url
    assert_response :success
  end

  test "should create rayshift" do
    assert_difference('Rayshift.count') do
      post rayshifts_url, params: { rayshift: { post: @rayshift.post } }
    end

    assert_redirected_to rayshift_url(Rayshift.last)
  end

  test "should show rayshift" do
    get rayshift_url(@rayshift)
    assert_response :success
  end

  test "should get edit" do
    get edit_rayshift_url(@rayshift)
    assert_response :success
  end

  test "should update rayshift" do
    patch rayshift_url(@rayshift), params: { rayshift: { post: @rayshift.post } }
    assert_redirected_to rayshift_url(@rayshift)
  end

  test "should destroy rayshift" do
    assert_difference('Rayshift.count', -1) do
      delete rayshift_url(@rayshift)
    end

    assert_redirected_to rayshifts_url
  end
end
