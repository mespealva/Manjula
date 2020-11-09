require 'test_helper'

class FeedingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feeding = feedings(:one)
  end

  test "should get index" do
    get feedings_url
    assert_response :success
  end

  test "should get new" do
    get new_feeding_url
    assert_response :success
  end

  test "should create feeding" do
    assert_difference('Feeding.count') do
      post feedings_url, params: { feeding: { baby: @feeding.baby, cant: @feeding.cant, time: @feeding.time } }
    end

    assert_redirected_to feeding_url(Feeding.last)
  end

  test "should show feeding" do
    get feeding_url(@feeding)
    assert_response :success
  end

  test "should get edit" do
    get edit_feeding_url(@feeding)
    assert_response :success
  end

  test "should update feeding" do
    patch feeding_url(@feeding), params: { feeding: { baby: @feeding.baby, cant: @feeding.cant, time: @feeding.time } }
    assert_redirected_to feeding_url(@feeding)
  end

  test "should destroy feeding" do
    assert_difference('Feeding.count', -1) do
      delete feeding_url(@feeding)
    end

    assert_redirected_to feedings_url
  end
end
