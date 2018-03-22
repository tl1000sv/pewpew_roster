require 'test_helper'

class BowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bow = bows(:one)
  end

  test "should get index" do
    get bows_url
    assert_response :success
  end

  test "should get new" do
    get new_bow_url
    assert_response :success
  end

  test "should create bow" do
    assert_difference('Bow.count') do
      post bows_url, params: { bow: { bow_type: @bow.bow_type, description: @bow.description, make: @bow.make, model: @bow.model, serial_number: @bow.serial_number } }
    end

    assert_redirected_to bow_url(Bow.last)
  end

  test "should show bow" do
    get bow_url(@bow)
    assert_response :success
  end

  test "should get edit" do
    get edit_bow_url(@bow)
    assert_response :success
  end

  test "should update bow" do
    patch bow_url(@bow), params: { bow: { bow_type: @bow.bow_type, description: @bow.description, make: @bow.make, model: @bow.model, serial_number: @bow.serial_number } }
    assert_redirected_to bow_url(@bow)
  end

  test "should destroy bow" do
    assert_difference('Bow.count', -1) do
      delete bow_url(@bow)
    end

    assert_redirected_to bows_url
  end
end
