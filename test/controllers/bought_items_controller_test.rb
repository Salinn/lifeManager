require 'test_helper'

class BoughtItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bought_item = bought_items(:one)
  end

  test "should get index" do
    get bought_items_url
    assert_response :success
  end

  test "should get new" do
    get new_bought_item_url
    assert_response :success
  end

  test "should create bought_item" do
    assert_difference('BoughtItem.count') do
      post bought_items_url, params: { bought_item: { apartment_id: @bought_item.apartment_id, name: @bought_item.name, price: @bought_item.price, user_id: @bought_item.user_id } }
    end

    assert_redirected_to bought_item_url(BoughtItem.last)
  end

  test "should show bought_item" do
    get bought_item_url(@bought_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_bought_item_url(@bought_item)
    assert_response :success
  end

  test "should update bought_item" do
    patch bought_item_url(@bought_item), params: { bought_item: { apartment_id: @bought_item.apartment_id, name: @bought_item.name, price: @bought_item.price, user_id: @bought_item.user_id } }
    assert_redirected_to bought_item_url(@bought_item)
  end

  test "should destroy bought_item" do
    assert_difference('BoughtItem.count', -1) do
      delete bought_item_url(@bought_item)
    end

    assert_redirected_to bought_items_url
  end
end
