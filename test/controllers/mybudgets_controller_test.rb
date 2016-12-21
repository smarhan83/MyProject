require 'test_helper'

class MybudgetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mybudget = mybudgets(:one)
  end

  test "should get index" do
    get mybudgets_url
    assert_response :success
  end

  test "should get new" do
    get new_mybudget_url
    assert_response :success
  end

  test "should create mybudget" do
    assert_difference('Mybudget.count') do
      post mybudgets_url, params: { mybudget: { amount: @mybudget.amount, budgetname: @mybudget.budgetname, year: @mybudget.year } }
    end

    assert_redirected_to mybudget_url(Mybudget.last)
  end

  test "should show mybudget" do
    get mybudget_url(@mybudget)
    assert_response :success
  end

  test "should get edit" do
    get edit_mybudget_url(@mybudget)
    assert_response :success
  end

  test "should update mybudget" do
    patch mybudget_url(@mybudget), params: { mybudget: { amount: @mybudget.amount, budgetname: @mybudget.budgetname, year: @mybudget.year } }
    assert_redirected_to mybudget_url(@mybudget)
  end

  test "should destroy mybudget" do
    assert_difference('Mybudget.count', -1) do
      delete mybudget_url(@mybudget)
    end

    assert_redirected_to mybudgets_url
  end
end
