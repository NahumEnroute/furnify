require "test_helper"

class FurnitureDeliveriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @furniture_delivery = furniture_deliveries(:one)
  end

  test "should get index" do
    get furniture_deliveries_url
    assert_response :success
  end

  test "should get new" do
    get new_furniture_delivery_url
    assert_response :success
  end

  test "should create furniture_delivery" do
    assert_difference('FurnitureDelivery.count') do
      post furniture_deliveries_url, params: { furniture_delivery: { address: @furniture_delivery.address, cost: @furniture_delivery.cost, furniture_id: @furniture_delivery.furniture_id, quantity: @furniture_delivery.quantity } }
    end

    assert_redirected_to furniture_delivery_url(FurnitureDelivery.last)
  end

  test "should show furniture_delivery" do
    get furniture_delivery_url(@furniture_delivery)
    assert_response :success
  end

  test "should get edit" do
    get edit_furniture_delivery_url(@furniture_delivery)
    assert_response :success
  end

  test "should update furniture_delivery" do
    patch furniture_delivery_url(@furniture_delivery), params: { furniture_delivery: { address: @furniture_delivery.address, cost: @furniture_delivery.cost, furniture_id: @furniture_delivery.furniture_id, quantity: @furniture_delivery.quantity } }
    assert_redirected_to furniture_delivery_url(@furniture_delivery)
  end

  test "should destroy furniture_delivery" do
    assert_difference('FurnitureDelivery.count', -1) do
      delete furniture_delivery_url(@furniture_delivery)
    end

    assert_redirected_to furniture_deliveries_url
  end
end
