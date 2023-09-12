require "test_helper"

class BarcodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @barcode = barcodes(:one)
  end

  test "should get index" do
    get barcodes_url
    assert_response :success
  end

  test "should get new" do
    get new_barcode_url
    assert_response :success
  end

  test "should create barcode" do
    assert_difference("Barcode.count") do
      post barcodes_url, params: { barcode: { been_set: @barcode.been_set, code: @barcode.code, name: @barcode.name } }
    end

    assert_redirected_to barcode_url(Barcode.last)
  end

  test "should show barcode" do
    get barcode_url(@barcode)
    assert_response :success
  end

  test "should get edit" do
    get edit_barcode_url(@barcode)
    assert_response :success
  end

  test "should update barcode" do
    patch barcode_url(@barcode), params: { barcode: { been_set: @barcode.been_set, code: @barcode.code, name: @barcode.name } }
    assert_redirected_to barcode_url(@barcode)
  end

  test "should destroy barcode" do
    assert_difference("Barcode.count", -1) do
      delete barcode_url(@barcode)
    end

    assert_redirected_to barcodes_url
  end
end
