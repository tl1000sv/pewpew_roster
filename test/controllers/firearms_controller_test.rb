require 'test_helper'

class FirearmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @firearm = firearms(:one)
  end

  test "should get index" do
    get firearms_url
    assert_response :success
  end

  test "should get new" do
    get new_firearm_url
    assert_response :success
  end

  test "should create firearm" do
    assert_difference('Firearm.count') do
      post firearms_url, params: { firearm: { action: @firearm.action, cartridge: @firearm.cartridge, make: @firearm.make, model: @firearm.model, serial_number: @firearm.serial_number, classification: @firearm.classification } }
    end

    assert_redirected_to firearm_url(Firearm.last)
  end

  test "should show firearm" do
    get firearm_url(@firearm)
    assert_response :success
  end

  test "should get edit" do
    get edit_firearm_url(@firearm)
    assert_response :success
  end

  test "should update firearm" do
    patch firearm_url(@firearm), params: { firearm: { action: @firearm.action, cartridge: @firearm.cartridge, make: @firearm.make, model: @firearm.model, serial_number: @firearm.serial_number, classification: @firearm.classification } }
    assert_redirected_to firearm_url(@firearm)
  end

  test "should destroy firearm" do
    assert_difference('Firearm.count', -1) do
      delete firearm_url(@firearm)
    end

    assert_redirected_to firearms_url
  end
end
