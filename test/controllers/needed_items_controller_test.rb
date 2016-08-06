require 'test_helper'

class NeededItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @needed_item = needed_items(:one)
  end

  test "should get index" do
    get needed_items_url
    assert_response :success
  end

  test "should get new" do
    get new_needed_item_url
    assert_response :success
  end

  test "should create needed_item" do
    assert_difference('NeededItem.count') do
      post needed_items_url, params: { needed_item: { apartment_id: @needed_item.apartment_id, name: @needed_item.name, price: @needed_item.price, user_id: @needed_item.user_id } }
    end

    assert_redirected_to needed_item_url(NeededItem.last)
  end

  test "should show needed_item" do
    get needed_item_url(@needed_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_needed_item_url(@needed_item)
    assert_response :success
  end

  test "should update needed_item" do
    patch needed_item_url(@needed_item), params: { needed_item: { apartment_id: @needed_item.apartment_id, name: @needed_item.name, price: @needed_item.price, user_id: @needed_item.user_id } }
    assert_redirected_to needed_item_url(@needed_item)
  end

  test "should destroy needed_item" do
    assert_difference('NeededItem.count', -1) do
      delete needed_item_url(@needed_item)
    end

    assert_redirected_to needed_items_url
  end
end
