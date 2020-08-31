require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
    @item = items(:one)
  end

  test "should get index" do
    get :index, params: { order_id: @order }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { order_id: @order }
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post :create, params: { order_id: @order, item: @item.attributes }
    end

    assert_redirected_to order_item_path(@order, Item.last)
  end

  test "should show item" do
    get :show, params: { order_id: @order, id: @item }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { order_id: @order, id: @item }
    assert_response :success
  end

  test "should update item" do
    put :update, params: { order_id: @order, id: @item, item: @item.attributes }
    assert_redirected_to order_item_path(@order, Item.last)
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, params: { order_id: @order, id: @item }
    end

    assert_redirected_to order_items_path(@order)
  end
end
