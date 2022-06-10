require "application_system_test_case"

class FurnitureDeliveriesTest < ApplicationSystemTestCase
  setup do
    @furniture_delivery = furniture_deliveries(:one)
  end

  test "visiting the index" do
    visit furniture_deliveries_url
    assert_selector "h1", text: "Furniture Deliveries"
  end

  test "creating a Furniture delivery" do
    visit furniture_deliveries_url
    click_on "New Furniture Delivery"

    fill_in "Address", with: @furniture_delivery.address
    fill_in "Cost", with: @furniture_delivery.cost
    fill_in "Furniture", with: @furniture_delivery.furniture_id
    fill_in "Quantity", with: @furniture_delivery.quantity
    click_on "Create Furniture delivery"

    assert_text "Furniture delivery was successfully created"
    click_on "Back"
  end

  test "updating a Furniture delivery" do
    visit furniture_deliveries_url
    click_on "Edit", match: :first

    fill_in "Address", with: @furniture_delivery.address
    fill_in "Cost", with: @furniture_delivery.cost
    fill_in "Furniture", with: @furniture_delivery.furniture_id
    fill_in "Quantity", with: @furniture_delivery.quantity
    click_on "Update Furniture delivery"

    assert_text "Furniture delivery was successfully updated"
    click_on "Back"
  end

  test "destroying a Furniture delivery" do
    visit furniture_deliveries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Furniture delivery was successfully destroyed"
  end
end
