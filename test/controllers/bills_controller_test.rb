require 'test_helper'

class BillsControllerTest < ActionController::TestCase
  setup do
    @bill = bills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bill" do
    assert_difference('Bill.count') do
      post :create, bill: { cost: @bill.cost, description: @bill.description, group_id: @bill.group_id, image: @bill.image, name: @bill.name, paid: @bill.paid, payment_group_id: @bill.payment_group_id, user_id: @bill.user_id }
    end

    assert_redirected_to bill_path(assigns(:bill))
  end

  test "should show bill" do
    get :show, id: @bill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bill
    assert_response :success
  end

  test "should update bill" do
    patch :update, id: @bill, bill: { cost: @bill.cost, description: @bill.description, group_id: @bill.group_id, image: @bill.image, name: @bill.name, paid: @bill.paid, payment_group_id: @bill.payment_group_id, user_id: @bill.user_id }
    assert_redirected_to bill_path(assigns(:bill))
  end

  test "should destroy bill" do
    assert_difference('Bill.count', -1) do
      delete :destroy, id: @bill
    end

    assert_redirected_to bills_path
  end
end
