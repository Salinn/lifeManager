require 'test_helper'

class SharedItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shared_item = shared_items(:one)
  end

  test "should get index" do
    get shared_items_url
    assert_response :success
  end

  test "should get new" do
    get new_shared_item_url
    assert_response :success
  end

  test "should create shared_item" do
    assert_difference('SharedItem.count') do
      post shared_items_url, params: { shared_item: { name: @shared_item.name, photo: @shared_item.photo, user_id: @shared_item.user_id } }
    end

    assert_redirected_to shared_item_url(SharedItem.last)
  end

  test "should show shared_item" do
    get shared_item_url(@shared_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_shared_item_url(@shared_item)
    assert_response :success
  end

  test "should update shared_item" do
    patch shared_item_url(@shared_item), params: { shared_item: { name: @shared_item.name, photo: @shared_item.photo, user_id: @shared_item.user_id } }
    assert_redirected_to shared_item_url(@shared_item)
  end

  test "should destroy shared_item" do
    assert_difference('SharedItem.count', -1) do
      delete shared_item_url(@shared_item)
    end

    assert_redirected_to shared_items_url
  end
end
